// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'query.freezed.dart';
part 'query.g.dart';

@freezed
abstract class SearchGitHubRepositoryListQuery
    with _$SearchGitHubRepositoryListQuery {
  factory SearchGitHubRepositoryListQuery({
    @JsonKey(name: 'q') required String keyword,
    @JsonKey(name: 'page') required int page,
  }) = _SearchGitHubRepositoryListQuery;

  factory SearchGitHubRepositoryListQuery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchGitHubRepositoryListQueryFromJson(json);
}
