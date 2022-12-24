import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/presentation/components/loading_indicator/widget.dart';
import 'package:github_search/presentation/styles/margin.dart';
import 'package:github_search/presentation/styles/padding.dart';
import '../../components/search_text_filed/widget.dart';
import 'notifier.dart';
import 'state.dart';
import 'type.dart';

/// GitHubリポジトリ一覧検索画面
class GitHubRepositorySearchPage extends ConsumerStatefulWidget {
  const GitHubRepositorySearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<GitHubRepositorySearchPage> {
  late final TextEditingController keywordController;

  @override
  void initState() {
    keywordController = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final fetchGitHubRepositoryList = ref.watch(gitHubRespositoryListProvider);
    final fetchListNotifier = ref.watch(gitHubRespositoryListProvider.notifier);
    final state = ref.watch(gitHubRespotiroySearchProvider);
    final notifier = ref.watch(gitHubRespotiroySearchProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.white,
      body: fetchGitHubRepositoryList.when(
        data: (data) {
          return SafeArea(
            child: NotificationListener<ScrollEndNotification>(
              onNotification: (notification) {
                // 一覧結果が無い場合はスクロール検知させない
                if (data.list.isEmpty) {
                  return false;
                }

                if (notification.metrics.extentAfter == 0) {
                  switch (state.fetchType) {
                    case GitHubRespositoryFetchType.list:
                      fetchListNotifier.paginateList();
                      break;
                    case GitHubRespositoryFetchType.searchList:
                      fetchListNotifier.paginateSearchList(
                        keywordController.text,
                      );
                      break;
                  }
                }

                return true;
              },
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: SearchTextFiled(
                      keywordController: keywordController,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          notifier.showList();
                          return;
                        }

                        if (!state.isShowList) {
                          return;
                        }

                        notifier.hideList();
                      },
                      onSubmitted: (value) async {
                        // 検索ワードが無い場合は一覧取得させる
                        if (value.isEmpty) {
                          notifier.setListType();
                          notifier.showList();
                          await fetchListNotifier.fetchList();
                          return;
                        }

                        if (GitHubRespositoryFetchType.list ==
                            state.fetchType) {
                          notifier.setSearchListType();
                        }

                        notifier.showList();
                        await fetchListNotifier.searchList(value);
                      },
                    ),
                    backgroundColor: Colors.white,
                  ),
                  state.isShowList
                      ? SliverPadding(
                          padding: AppPadding.smallAll,
                          sliver: _RepositoryListView(data: data),
                        )
                      : SliverToBoxAdapter(
                          child: Text(keywordController.text),
                        ),
                  SliverToBoxAdapter(
                    child: fetchGitHubRepositoryList.maybeWhen(
                      // data、loading、error以外の場合に表示させたいwidgetをorElseで実装できる
                      orElse: () {
                        if (fetchGitHubRepositoryList.isRefreshing) {
                          return const LoadingIndicator();
                        }

                        return const SizedBox.shrink();
                      },
                      error: (error, stackTrace) {
                        return Text(error.toString());
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const LoadingIndicator(),
      ),
    );
  }
}

class _RepositoryListView extends StatelessWidget {
  const _RepositoryListView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final GitHubRepositoryListState data;

  @override
  Widget build(BuildContext context) {
    return data.list.isEmpty
        ? const SliverToBoxAdapter(
            child: Center(
              child: Text('No data'),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: data.list.length,
              (context, index) {
                final item = data.list[index];

                return Container(
                  margin: AppMargin.xSmallBottom,
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            _AvatarImageArea(
                              avaterUrl: item.owner.avatarUrl,
                            ),
                            AppVerticalMargin.xSmall,
                            Text(item.owner.name),
                          ],
                        ),
                        AppVerticalMargin.xSmall,
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppVerticalMargin.xSmall,
                        Text(item.description),
                        AppVerticalMargin.xSmall,
                        Row(
                          children: [
                            const Icon(Icons.star_border),
                            Flexible(
                              child: Text(
                                item.startCount.toString(),
                              ),
                            ),
                            AppHorizontalMargin.small,
                            const Icon(Icons.circle_sharp),
                            Flexible(child: Text(item.language)),
                          ],
                        ),
                      ],
                    ),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    onTap: () {
                      print('詳細画面遷移');
                    },
                  ),
                );
              },
            ),
          );
  }
}

class _AvatarImageArea extends StatelessWidget {
  const _AvatarImageArea({
    Key? key,
    required this.avaterUrl,
  }) : super(key: key);

  final String avaterUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: avaterUrl.isEmpty ? const FlutterLogo() : Image.network(avaterUrl),
    );
  }
}
