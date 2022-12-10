import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/domain/api/repositories/git_hub.dart';
import 'package:github_search/infrastructure/repositories/git_hub.dart';
import 'package:github_search/presentation/pages/home/state.dart';

final gitHubRespositoryListProvider = StateNotifierProvider<
    GitHubRepositoryListNotifier, AsyncValue<GitHubRepositoryListState>>((ref) {
  return GitHubRepositoryListNotifier(
    gitHubRepository: ref.watch(gitHubRepositoryImplProvider),
  );
});

class GitHubRepositoryListNotifier
    extends StateNotifier<AsyncValue<GitHubRepositoryListState>> {
  GitHubRepositoryListNotifier({
    required this.gitHubRepository,
  }) : super(const AsyncLoading<GitHubRepositoryListState>()) {
    fetchList();
  }

  final GitHubRepository gitHubRepository;

  Future<void> fetchList() async {
    state = await AsyncValue.guard(() async {
      final result = await gitHubRepository.fetchRepositoryList();
      final res = result.when(
        success: (value) {
          print('成功！');
          log(value.list.toString());
          return GitHubRepositoryListState();
        },
        failure: (error) {
          print('失敗');
          log(error);
          return GitHubRepositoryListState();
        },
      );

      return res;
    });
  }
}
