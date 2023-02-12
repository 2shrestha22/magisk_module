import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github/github.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/module_prop.dart';
import '../../models/repo_info.dart';
import '../../repo/magisk_module_repo.dart';

final modulePropProvider = FutureProvider.family<ModuleProp?, RepoInfo>(
  (ref, repo) => ref.watch(moduleRepoProvider).getModuleProp(repo),
);

class ModuleItem extends StatelessWidget {
  const ModuleItem({
    super.key,
    required this.repo,
  });

  final Repository repo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Consumer(builder: (context, ref, child) {
        final modulePropAsync =
            ref.watch(modulePropProvider(RepoInfo.fromGithubRepository(repo)));

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: modulePropAsync.when(
            data: (prop) {
              if (prop == null) {
                return const SizedBox.shrink();
              }

              return Card(
                key: const ValueKey('loaded'),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {
                    context.go(
                      '/detailsPage',
                      extra: RepoInfo.fromGithubRepository(repo),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          prop.name,
                          style: Theme.of(context).textTheme.titleMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${prop.version} (${prop.id})',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: ' by ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: prop.author,
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Divider(),
                        Text(
                          prop.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            loading: () => Card(
              key: const ValueKey('loading'),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repo.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            error: (_, __) => Card(
              surfaceTintColor: Theme.of(context).colorScheme.error,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repo.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Divider(),
                    const Text('This repo is not a valid Magisk module.'),
                    GestureDetector(
                      onTap: () {
                        launchUrl(
                          Uri.parse(repo.htmlUrl),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Text(
                        repo.htmlUrl,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
