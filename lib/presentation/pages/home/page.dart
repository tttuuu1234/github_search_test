import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('ホーム'),
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) {
                return ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(index.toString()),
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
      ),
    );
  }
}
