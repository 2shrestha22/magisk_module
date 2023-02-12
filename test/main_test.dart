import 'package:github/github.dart';

Future<void> main() async {
  final github = GitHub();

  final repos = await github.repositories
      .listUserRepositories('Magisk-Modules-Alt-Repo')
      .toList();

  for (var element in repos) {
    print(element.owner?.id);
  }
  // final repositorySlug = RepositorySlug('Magisk-Modules-Alt-Repo', 'acc');

  // final prop =
  //     await github.repositories.getContents(repositorySlug, 'module.prop');

  // print(prop.file?.text);

  print('Remaining rate limit: ${github.rateLimitRemaining}');
}
