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
                title: Text('ホーム'),
              ),
              SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                  childCount: data.list.length,
                  (context, index) {
                    final item = data.list[index];
                    return ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name),
                          const Text('説明'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('スター'),
                              Text('スター'),
                              Text('スター'),
                              Text('スター'),
                            ],
                          )
                        ],
                      ),
                      onTap: () {
                        print('詳細画面遷移');
                      },
                    );
                  },
                ),
                itemExtent: 100,
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
