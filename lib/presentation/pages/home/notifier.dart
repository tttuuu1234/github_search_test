import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/pages/home/state.dart';

final gitHubRespositoryListProvider = StateNotifierProvider<
    GitHubRepositoryListNotifier, AsyncValue<GitHubRepositoryListState>>((ref) {
  return GitHubRepositoryListNotifier();
});

class GitHubRepositoryListNotifier
    extends StateNotifier<AsyncValue<GitHubRepositoryListState>> {
  GitHubRepositoryListNotifier()
      : super(const AsyncLoading<GitHubRepositoryListState>());
}
