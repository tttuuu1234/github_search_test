import 'package:github_search/core/api/requests/git_hub_repository/request.dart';

import 'package:github_search/core/api/models/common/git_hub_repository/model.dart';

import '../../core/api/models/search_git_hub_repository_list/model.dart';
import 'package:github_search/core/api/requests/search_git_hub_repository_list/request.dart';

import '../../core/api/http/client.dart';
import '../../core/api/http/path.dart';
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
      path: ApiPath.fetchListPublicRepositories,
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

  @override
  Future<Result<GitHubRepositoryModel>> fetchDetail({
    required GitHubRepositoryRequest request,
  }) async{
    final response = await httpClient.get(
      path: ApiPath.fetchRepositoryDetail,
      query: request.toJson(),
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
