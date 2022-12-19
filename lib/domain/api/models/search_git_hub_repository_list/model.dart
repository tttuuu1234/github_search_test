// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
abstract class GitHubRepositoryModel with _$GitHubRepositoryModel {
  factory GitHubRepositoryModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'stargazers_count') required int? startCount,
    @JsonKey(name: 'language') required String? language,
    @JsonKey(name: 'owner') required OwnerModel owner,
  }) = _GitHubRepositoryModel;

  factory GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryModelFromJson(json);
}

@freezed
abstract class OwnerModel with _$OwnerModel {
  factory OwnerModel({
    @JsonKey(name: 'login') required String name,
    @JsonKey(name: 'avater_url') required String? avaterUrl,
  }) = _OwnerModel;

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}
