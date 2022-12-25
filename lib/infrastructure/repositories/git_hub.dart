import '../../core/api/models/common/git_hub_repository/model.dart';
import '../../core/api/parameters/git_hub_repository_detail/parameter.dart';

import '../../core/api/http/path.dart';
import '../../core/api/models/search_git_hub_repository_list/model.dart';
import '../../core/api/queries/search_git_hub_repository_list/query.dart';

import '../../core/api/http/client.dart';
import '../../core/api/models/git_hub_repository_list/model.dart';
import '../../core/api/repositories/git_hub.dart';
import '../../core/api/response/result.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  GitHubRepositoryImpl(this.httpClient);

  final HttpClient httpClient;

  @override
  Future<Result<GitHubRepositoryListModel>> fetchRepositoryList({
    required int page,
  }) async {
    final response = await httpClient.get(
      apiPath: ApiPath.fetchListPublicRepositories,
      query: {'page': page},
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
    required SearchGitHubRepositoryListQuery query,
  }) async {
    final response = await httpClient.get(
      apiPath: ApiPath.searchRepositories,
      query: query.toJson(),
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

  @override
  Future<Result<GitHubRepositoryModel>> fetchDetail({
    required GitHubRepositoryDetailParameter parameter,
  }) async {
    final response = await httpClient.get(
      apiPath: ApiPath.fetchRepositoryDetail,
      parameter: parameter.toParam(),
    );

    return Result.fromResponse(
      response: response,
      fromJson: (body) {
        return GitHubRepositoryModel.fromJson(
          body as Map<String, dynamic>,
        );
      },
    );
  }
}
