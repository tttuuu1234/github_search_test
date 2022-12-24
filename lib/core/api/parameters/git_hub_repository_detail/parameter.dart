// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'parameter.freezed.dart';

/// GitHubリポジトリ詳細取得apiパラメーター
@freezed
abstract class GitHubRepositoryDetailParameter
    implements _$GitHubRepositoryDetailParameter {
  const GitHubRepositoryDetailParameter._();

  factory GitHubRepositoryDetailParameter({
    required String ownerName,
    required String repoName,
  }) = _GitHubRepositoryParameter;

  String toParam() {
    return '$ownerName/$repoName';
  }
}
