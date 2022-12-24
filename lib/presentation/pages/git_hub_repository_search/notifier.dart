import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/api/requests/search_git_hub_repository_list/request.dart';
import '../../../domain/api/repositories/git_hub.dart';
import '../../../domain/api/response/result.dart';
import 'state.dart';

import '../../../provider/repository.dart';
import 'type.dart';

final gitHubRespositoryListProvider = StateNotifierProvider<
    GitHubRepositoryListNotifier, AsyncValue<GitHubRepositoryListState>>((ref) {
  return GitHubRepositoryListNotifier(
    gitHubRepository: ref.watch(gitHubRepositoryImplProvider),
  );
});

final gitHubRespotiroySearchProvider = StateNotifierProvider<
    GitHubRepositorySearchNotifier, GitHubRepositorySearchState>((ref) {
  return GitHubRepositorySearchNotifier();
});

class GitHubRepositoryListNotifier
    extends StateNotifier<AsyncValue<GitHubRepositoryListState>> {
  GitHubRepositoryListNotifier({
    required this.gitHubRepository,
  }) : super(const AsyncLoading<GitHubRepositoryListState>()) {
    fetchList();
  }

  final GitHubRepository gitHubRepository;

  /// ページ数
  int page = 1;

  /// 検索一覧ページ数
  int searchListPage = 1;

  /// リフレッシュされているか
  bool get _isRefreshLoading => state == _copyWithPrevious();

  /// 一覧取得
  Future<void> fetchList() async {
    try {
      final response = await gitHubRepository.fetchRepositoryList(
        page: 1,
      );
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

  /// ページネート一覧取得
  Future<void> paginateList() async {
    try {
      if (_isRefreshLoading) {
        return;
      }

      state = _copyWithPrevious();
      page++;
      final response = await gitHubRepository.fetchRepositoryList(
        page: page,
      );
      final data = response.data;
      if (ResultStatus.failure == response.status || data == null) {
        throw Exception(response.msg);
      }

      final list = data.list.map((e) {
        return GitHubRepositoryState.fromModel(e);
      }).toList();

      final newList = [...state.value!.list, ...list];
      state = AsyncValue.data(GitHubRepositoryListState(list: newList));
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// 検索一覧取得
  Future<void> searchList(String keyword) async {
    try {
      state = const AsyncLoading();
      final request = SearchGitHubRepositoryListRequest(
        keyword: keyword,
        page: 1,
      );
      final response = await gitHubRepository.searchRepositoryList(
        request: request,
      );
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

  /// ページネート検索一覧取得
  Future<void> paginateSearchList(String keyword) async {
    try {
      if (_isRefreshLoading) {
        return;
      }

      state = _copyWithPrevious();
      searchListPage++;
      final request = SearchGitHubRepositoryListRequest(
        keyword: keyword,
        page: searchListPage,
      );
      final response = await gitHubRepository.searchRepositoryList(
        request: request,
      );
      final data = response.data;
      if (ResultStatus.failure == response.status || data == null) {
        throw Exception(response.msg);
      }

      final list = data.list.map((e) {
        return GitHubRepositoryState.fromModel(e);
      }).toList();

      final newList = [...state.value!.list, ...list];
      state = AsyncValue.data(GitHubRepositoryListState(list: newList));
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  AsyncValue<GitHubRepositoryListState> _copyWithPrevious() {
    return const AsyncLoading<GitHubRepositoryListState>()
        .copyWithPrevious(state);
  }
}

class GitHubRepositorySearchNotifier
    extends StateNotifier<GitHubRepositorySearchState> {
  GitHubRepositorySearchNotifier() : super(GitHubRepositorySearchState());

  void showList() {
    state = state.copyWith(isShowList: true);
  }

  void hideList() {
    state = state.copyWith(isShowList: false);
  }

  void setListType() {
    state = state.copyWith(fetchType: GitHubRespositoryFetchType.list);
  }

  void setSearchListType() {
    state = state.copyWith(fetchType: GitHubRespositoryFetchType.searchList);
  }
}
