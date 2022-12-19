import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/api/models/git_hub_repository_list/model.dart';

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
    required String description,
    required int startCount,
    required String language,
    required OwnerState owner,
  }) = _GitHubRepositoryState;

  factory GitHubRepositoryState.fromModel(GitHubRepositoryModel model) {
    return GitHubRepositoryState(
      name: model.name,
      description: model.description ?? '',
      startCount: model.startCount ?? 0,
      language: model.language ?? '',
      owner: OwnerState.fromModel(model.owner),
    );
  }
}

@freezed
abstract class OwnerState with _$OwnerState {
  factory OwnerState({
    required String name,
    required String avatarUrl,
  }) = _OwnerState;

  factory OwnerState.fromModel(OwnerModel model) {
    return OwnerState(
      name: model.name,
      avatarUrl: model.avaterUrl ?? '',
    );
  }
}

@freezed
abstract class HomePageState with _$HomePageState {
  factory HomePageState({
    required bool isShowList,
  }) = _HomePageState;
}
