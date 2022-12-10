import 'package:github_search/domain/api/models/git_hub_repository_list/model.dart';

/// GitHubに関連するrepository
abstract class GitHubRepository {
  /// リポジトリ一覧取得
  Future<GitHubRepositoryListModel> fetchRepositoryList();
}
