import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/api/parameters/git_hub_repository_detail/parameter.dart';
import '../../../core/api/repositories/git_hub.dart';
import 'state.dart';
import '../../../provider/repository.dart';

final gitHubRepositoryDetailProvider = AutoDisposeStateNotifierProvider.family<
    GitHubRepositoryDetailNotifier,
    AsyncValue<GitHubRepositoryState>,
    GitHubRepositoryDetailParameter>((ref, parameter) {
  return GitHubRepositoryDetailNotifier(
    parameter: parameter,
    gitHubRepository: ref.watch(gitHubRepositoryImplProvider),
  );
});

class GitHubRepositoryDetailNotifier
    extends StateNotifier<AsyncValue<GitHubRepositoryState>> {
  GitHubRepositoryDetailNotifier({
    required GitHubRepositoryDetailParameter parameter,
    required this.gitHubRepository,
  }) : super(const AsyncLoading()) {
    _fetchDetail(parameter);
  }

  final GitHubRepository gitHubRepository;

  /// 詳細取得
  Future<void> _fetchDetail(GitHubRepositoryDetailParameter parameter) async {
    try {
      final response = await gitHubRepository.fetchDetail(
        parameter: parameter,
      );
      final data = response.data;
      if (response.isFailure || data == null) {
        throw Exception(response.msg);
      }

      final repo = GitHubRepositoryState.fromModel(data);

      state = AsyncValue.data(repo);
    } on Exception catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
