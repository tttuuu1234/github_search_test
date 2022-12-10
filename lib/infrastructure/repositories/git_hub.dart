import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/domain/api/models/git_hub_repository_list/model.dart';
import 'package:github_search/domain/api/repositories/git_hub.dart';
import 'package:github_search/domain/api/response/result.dart';

final gitHubRepositoryImplProvider = Provider<GitHubRepositoryImpl>((ref) {
  return GitHubRepositoryImpl();
});

class GitHubRepositoryImpl implements GitHubRepository {
  @override
  Future<Result<GitHubRepositoryListModel>> fetchRepositoryList() async {
    final json = [
      {
        'name': '翼',
      },
      {
        'name': 'たかし',
      },
    ];

    return await Future.delayed(const Duration(seconds: 5)).then((value) {
      return Result.success(GitHubRepositoryListModel.fromJson(json));
    }).catchError((error) {
      return const Result<GitHubRepositoryListModel>.failure('エラーです');
    });
  }
}
