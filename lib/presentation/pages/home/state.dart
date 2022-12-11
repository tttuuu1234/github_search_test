import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search/domain/api/models/git_hub_repository_list/model.dart';

part 'state.freezed.dart';

@freezed
abstract class GitHubRepositoryListState with _$GitHubRepositoryListState {
  factory GitHubRepositoryListState({
    required List<GitHubRepositoryState> list,
  }) = _GitHubRepositoryListState;
}

@freezed
abstract class GitHubRepositoryState with _$GitHubRepositoryState {
  factory GitHubRepositoryState({
    required String name,
  }) = _GitHubRepositoryState;

  factory GitHubRepositoryState.fromModel(GitHubRepositoryModel model) {
    return GitHubRepositoryState(name: model.name);
  }
}
