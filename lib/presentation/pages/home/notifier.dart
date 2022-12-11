import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/api/repositories/git_hub.dart';
import '../../../domain/api/response/result.dart';
import 'state.dart';

import '../../../provider/repository.dart';

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
    try {
      final response = await gitHubRepository.fetchRepositoryList();
      final data = response.data;

      if (ResultStatus.failure == response.status || data == null) {
        throw Exception(response.msg);
      }

      final list = data.list.map((e) {
        return GitHubRepositoryState.fromModel(e);
      }).toList();

      state = AsyncValue.data(GitHubRepositoryListState(list: list));
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
