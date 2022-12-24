import 'package:github_search/core/api/models/common/git_hub_repository/model.dart';
import 'package:github_search/core/api/requests/git_hub_repository/request.dart';

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

  /// リポジトリ詳細取得
  Future<Result<GitHubRepositoryModel>> fetchDetail({
    required GitHubRepositoryRequest request,
  });
}
