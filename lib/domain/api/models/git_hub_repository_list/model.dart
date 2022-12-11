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
  }) = _GitHubRepositoryModel;

  factory GitHubRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryModelFromJson(json);
}
