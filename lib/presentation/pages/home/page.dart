import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchGitHubRepositoryList = ref.watch(gitHubRespositoryListProvider);

    return Scaffold(
      body: fetchGitHubRepositoryList.when(
        data: (data) {
          return CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('リポジトリ'),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: data.list.length,
                    (context, index) {
                      final item = data.list[index];
                      item.owner.avatarUrl;

                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  _AvatarImageArea(
                                    avaterUrl: item.owner.avatarUrl,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(item.owner.name),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(item.description),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(Icons.star_border),
                                  Flexible(
                                    child: Text(
                                      item.startCount.toString(),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  const Icon(Icons.circle_sharp),
                                  Flexible(child: Text(item.language)),
                                ],
                              ),
                            ],
                          ),
                          shape: Border(
                              bottom: BorderSide(
                            color: Colors.grey.shade300,
                          )),
                          onTap: () {
                            print('詳細画面遷移');
                          },
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        },
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
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
