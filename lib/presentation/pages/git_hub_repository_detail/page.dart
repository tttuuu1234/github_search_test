import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/api/parameters/git_hub_repository_detail/parameter.dart';
import '../../components/loading_indicator/widget.dart';
import 'notifier.dart';

/// GitHubリポジトリ詳細画面
class GitHubRepositoryDetailPage extends ConsumerWidget {
  const GitHubRepositoryDetailPage({
    super.key,
    required this.ownerName,
    required this.repoName,
  });

  final String ownerName;
  final String repoName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchGitHubRepositoryDetail = ref.watch(
      gitHubRepositoryDetailProvider(
        GitHubRepositoryDetailParameter(
          ownerName: ownerName,
          repoName: repoName,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: fetchGitHubRepositoryDetail.when(
        data: (data) {
          return Column(
            children: [
              Text(data.name),
            ],
          );
        },
        error: (error, stackTrace) => Center(
          child: Text(error.toString()),
        ),
        loading: () => const LoadingIndicator(),
      ),
    );
  }
}
