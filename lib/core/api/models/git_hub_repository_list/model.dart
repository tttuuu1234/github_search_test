// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/git_hub_repository/model.dart';

part 'model.freezed.dart';

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
