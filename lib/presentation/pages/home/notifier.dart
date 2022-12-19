import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/domain/api/requests/search_git_hub_repository_list/request.dart';
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

final homePageProvider =
    StateNotifierProvider<HomePageNotifier, HomePageState>((ref) {
  return HomePageNotifier();
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
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> searchRepositoryList(String keyword) async {
    try {
      state = const AsyncLoading();
      final request = SearchGitHubRepositoryListRequest(keyword: keyword);
      final response = await gitHubRepository.searchRepositoryList(
        request: request,
      );
      final data = response.data;
      if (ResultStatus.failure == response.status || data == null) {
        throw Exception(response.msg);
      }

      print(data.list.length);

      final list = data.list.map((e) {
        return GitHubRepositoryState.fromModel(e);
      }).toList();

      state = AsyncValue.data(GitHubRepositoryListState(list: list));
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

class HomePageNotifier extends StateNotifier<HomePageState> {
  HomePageNotifier() : super(HomePageState(isShowList: true));

  void showList() {
    state = state.copyWith(isShowList: true);
  }

  void hideList() {
    state = state.copyWith(isShowList: false);
  }
}
