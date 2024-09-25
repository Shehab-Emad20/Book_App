import 'package:bookly/feature/home/views/widgets/cusom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: FeaturedListViewItem(
                image:
                    'https://www.techsmith.com/blog/wp-content/uploads/2023/08/What-are-High-Resolution-Images.png',
              ),
            );
          }),
    );
  }
}
