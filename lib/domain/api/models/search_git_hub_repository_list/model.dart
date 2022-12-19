// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/git_hub_repository/model.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class SearchGitHubRepositoryListModel
    with _$SearchGitHubRepositoryListModel {
  factory SearchGitHubRepositoryListModel({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    @JsonKey(name: 'items') required List<GitHubRepositoryModel> list,
  }) = _SearchGitHubRepositoryListModel;

  factory SearchGitHubRepositoryListModel.fromJson(Map<String, dynamic> json) =>
      _$SearchGitHubRepositoryListModelFromJson(json);
}
