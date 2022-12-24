import '../models/search_git_hub_repository_list/model.dart';
import '../requests/search_git_hub_repository_list/request.dart';

import '../models/git_hub_repository_list/model.dart';
import '../response/result.dart';

/// GitHubに関連するrepository
abstract class GitHubRepository {
  /// リポジトリ一覧取得
  Future<Result<GitHubRepositoryListModel>> fetchRepositoryList({
    required int page,
  });

  /// リポジトリ検索
  Future<Result<SearchGitHubRepositoryListModel>> searchRepositoryList({
    required SearchGitHubRepositoryListRequest request,
  });
}
