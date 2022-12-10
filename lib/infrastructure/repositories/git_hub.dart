import 'package:github_search/domain/api/models/git_hub_repository_list/model.dart';
import 'package:github_search/domain/api/repositories/git_hub.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  @override
  Future<GitHubRepositoryListModel> fetchRepositoryList() {
    throw UnimplementedError();
  }
}
