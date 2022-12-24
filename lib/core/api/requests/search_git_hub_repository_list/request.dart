// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
abstract class SearchGitHubRepositoryListRequest
    with _$SearchGitHubRepositoryListRequest {
  factory SearchGitHubRepositoryListRequest({
    @JsonKey(name: 'q') required String keyword,
    @JsonKey(name: 'page') required int page,
  }) = _SearchGitHubRepositoryListRequest;

  factory SearchGitHubRepositoryListRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchGitHubRepositoryListRequestFromJson(json);
}
