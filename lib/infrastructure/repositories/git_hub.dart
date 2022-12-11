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
    try {
      final response = await httpClient.get(
        path: ApiPath.fetchListPublicRepositories,
      );
      return Result<GitHubRepositoryListModel>.fromResponse(
        response: response,
        fromJson: (body) {
          return GitHubRepositoryListModel.fromJson(body);
        },
      );
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
