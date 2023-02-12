import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magisk_module/ui/widgets/module_item.dart';

import '../repo/magisk_module_repo.dart';

final modulesProvider = FutureProvider(
  (ref) => ref.watch(moduleRepoProvider).getModuleRepo(),
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
              data: (repositories) {
                return ListView.builder(
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    final repo = repositories[index];

                    return ModuleItem(repo: repo);
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
