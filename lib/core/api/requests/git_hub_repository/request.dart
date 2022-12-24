// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@freezed
abstract class GitHubRepositoryRequest with _$GitHubRepositoryRequest {
  factory GitHubRepositoryRequest({
    @JsonKey(name: 'owner') required String ownerName,
    @JsonKey(name: 'repo') required int repoName,
  }) = _GitHubRepositoryRequest;

  factory GitHubRepositoryRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GitHubRepositoryRequestFromJson(json);
}
