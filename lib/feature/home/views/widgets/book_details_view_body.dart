import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/views/widgets/cusom_list_view_item.dart';
import 'package:bookly/feature/home/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key});

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const FeaturedListViewItem(),
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
            height: 18,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
