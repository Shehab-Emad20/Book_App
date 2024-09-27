import 'package:bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly/feature/home/presentation/manger/similar_books/similar_books_cubit_cubit.dart';
import 'package:bookly/feature/home/views/widgets/cusom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
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
      } else if (state is SimilarBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
