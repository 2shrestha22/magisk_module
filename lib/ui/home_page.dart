import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';

import '../models/module_prop.dart';
import '../repo/magisk_module_repo.dart';

final modulesProvider = FutureProvider(
  (ref) => ref.watch(moduleRepoProvider).getModuleRepo(),
);

final modulePropProvider = FutureProvider.family<ModuleProp?, Repository>(
  (ref, repo) => ref.watch(moduleRepoProvider).getModuleProp(repo),
);

final moduleReadMeProvider = FutureProvider.family<String, Repository>(
  (ref, repo) => ref.watch(moduleRepoProvider).getModuleReadMe(repo),
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magisk Module Repo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Consumer(
          builder: (context, ref, child) {
            final asyncModules = ref.watch(modulesProvider);
            return asyncModules.when(
              data: (repo) {
                return ListView.builder(
                  itemCount: repo.length,
                  itemBuilder: (context, index) {
                    final item = repo[index];

                    return Consumer(builder: (context, ref, child) {
                      final modulePropAsync =
                          ref.watch(modulePropProvider(item));
                      return modulePropAsync.when(
                        data: (prop) {
                          if (prop == null) {
                            return const SizedBox.shrink();
                          }
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    prop.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '${prop.version} (${prop.id})',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                          text: ' by ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        TextSpan(
                                          text: prop.author,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(),
                                  Text(prop.description),
                                ],
                              ),
                            ),
                          );
                        },
                        error: (_, __) => const Text('Error'),
                        loading: () => const SizedBox(height: 150),
                      );
                    });
                  },
                );
              },
              error: (_, __) => const Text('Error'),
              loading: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
