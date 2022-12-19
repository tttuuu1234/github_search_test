import '../../domain/api/models/search_git_hub_repository_list/model.dart';
import '../../domain/api/requests/search_git_hub_repository_list/request.dart';

import '../../domain/api/http/client.dart';
import '../../domain/api/http/path.dart';
import '../../domain/api/models/git_hub_repository_list/model.dart';
import '../../domain/api/repositories/git_hub.dart';
import '../../domain/api/response/result.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  GitHubRepositoryImpl(this.httpClient);

  final HttpClient httpClient;

  @override
  Future<Result<GitHubRepositoryListModel>> fetchRepositoryList() async {
    final response = await httpClient.get(
      path: ApiPath.fetchListPublicRepositories,
    );
    return Result.fromResponse(
      response: response,
      fromJson: (body) {
        return GitHubRepositoryListModel.fromJson(body);
      },
    );
  }

  @override
  Future<Result<SearchGitHubRepositoryListModel>> searchRepositoryList({
    required SearchGitHubRepositoryListRequest request,
  }) async {
    final response = await httpClient.get(
      path: ApiPath.searchRepositories,
      query: request.toJson(),
    );

    return Result.fromResponse(
      response: response,
      fromJson: (body) {
        return SearchGitHubRepositoryListModel.fromJson(
          body as Map<String, dynamic>,
        );
      },
    );
  }
}
