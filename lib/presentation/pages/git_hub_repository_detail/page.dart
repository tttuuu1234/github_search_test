import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/styles/padding.dart';
import '../../../core/api/parameters/git_hub_repository_detail/parameter.dart';
import '../../components/avater_image/widget.dart';
import '../../components/loading_indicator/widget.dart';
import '../../styles/margin.dart';
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
      appBar: AppBar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
      ),
      body: fetchGitHubRepositoryDetail.when(
        data: (data) {
          return SingleChildScrollView(
            child: Padding(
              padding: AppPadding.smallAll,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AvatarImageArea(
                        avaterUrl: data.owner.avatarUrl,
                      ),
                      AppVerticalMargin.xSmall,
                      Text(data.owner.name),
                    ],
                  ),
                  AppVerticalMargin.xSmall,
                  Text(
                    data.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AppVerticalMargin.xSmall,
                  Text(data.description),
                  AppVerticalMargin.xSmall,
                  Row(
                    children: [
                      const Icon(Icons.star_border),
                      Flexible(
                        child: Text(
                          data.startCount.toString(),
                        ),
                      ),
                      AppHorizontalMargin.small,
                      const Icon(Icons.circle_sharp),
                      Flexible(child: Text(data.language)),
                    ],
                  ),
                ],
              ),
            ),
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
