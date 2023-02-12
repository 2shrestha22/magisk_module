import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:magisk_module/models/repo_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:markdown/markdown.dart' as md;

import '../repo/magisk_module_repo.dart';

final moduleReadMeProvider = FutureProvider.family<String, RepoInfo>(
  (ref, repo) => ref.watch(moduleRepoProvider).getModuleReadMe(repo),
);

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.repoInfo,
  });

  final RepoInfo repoInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final readMeAsync = ref.watch(moduleReadMeProvider(repoInfo));

          return readMeAsync.when(
            data: (readme) {
              return Markdown(
                data: readme,
                extensionSet: md.ExtensionSet(
                  md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                  [
                    md.EmojiSyntax(),
                    ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
                  ],
                ),
                onTapLink: (text, href, title) {
                  if (href == null || href.startsWith('#')) {
                    return;
                  }
                  final uri = Uri.tryParse(href);
                  if (uri != null) {
                    launchUrl(
                      uri,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
              );
            },
            error: (_, __) => const Text('Error'),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
