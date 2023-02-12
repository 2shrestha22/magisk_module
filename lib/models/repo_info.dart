import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github/github.dart';
part 'repo_info.freezed.dart';

@freezed
class RepoInfo with _$RepoInfo {
  const RepoInfo._();

  const factory RepoInfo({
    required String name,
    required String fullName,
    required String defaultBranch,
  }) = _RepoInfo;

  factory RepoInfo.fromGithubRepository(Repository repository) => RepoInfo(
        name: repository.name,
        fullName: repository.fullName,
        defaultBranch: repository.defaultBranch,
      );
}
