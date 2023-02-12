import 'package:freezed_annotation/freezed_annotation.dart';
part 'repo_info.freezed.dart';

@freezed
class RepoInfo with _$RepoInfo {
  const factory RepoInfo({
    required String? name,
    required String? fullName,
    required String? defaultBranch,
  }) = _RepoInfo;
}
