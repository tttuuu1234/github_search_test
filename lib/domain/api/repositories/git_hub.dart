import 'package:github_search/domain/api/models/search_git_hub_repository_list/model.dart';

import '../models/git_hub_repository_list/model.dart';
import '../response/result.dart';

/// GitHubに関連するrepository
abstract class GitHubRepository {
  /// リポジトリ一覧取得
  Future<Result<GitHubRepositoryListModel>> fetchRepositoryList();

  /// リポジトリ検索
  Future<Result<SearchGitHubRepositoryListModel>> searchRepositoryList();
}
