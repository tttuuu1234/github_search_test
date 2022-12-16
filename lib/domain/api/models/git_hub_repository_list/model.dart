// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class GitHubRepositoryListModel with _$GitHubRepositoryListModel {
  factory GitHubRepositoryListModel({
    required List<GitHubRepositoryModel> list,
  }) = _GitHubRepositoryListModel;

  factory GitHubRepositoryListModel.fromJson(dynamic json) {
    final response = json as List<dynamic>;
    final list = response.map((e) {
      return GitHubRepositoryModel.fromJson(e as Map<String, dynamic>);
    }).toList();

    return GitHubRepositoryListModel(list: list);
  }
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
