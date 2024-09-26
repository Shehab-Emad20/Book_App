import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/views/widgets/books_action.dart';
import 'package:bookly/feature/home/views/widgets/cusom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .2),
        child: const FeaturedListViewItem(
          image:
              'https://www.techsmith.com/blog/wp-content/uploads/2023/08/What-are-High-Resolution-Images.png',
        ),
      ),
      const SizedBox(
        height: 43,
      ),
      const Text(
        'The Jungle Book',
        style: Styles.textStyle30,
      ),
      const SizedBox(
        height: 6,
      ),
      Opacity(
        opacity: .7,
        child: Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const BookRating(
        rating: 4,
        count: 200,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 20,
      ),
      const BooksAction(),
    ]);
  }
}
