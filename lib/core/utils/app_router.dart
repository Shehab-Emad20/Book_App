import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/book_details_view.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly/feature/home/presentation/manger/similar_books/similar_books_cubit_cubit.dart';
import 'package:bookly/feature/home_view.dart';
import 'package:bookly/serach/presentaion/views/serach_view.dart';
import 'package:bookly/splash/presentation/views/splashview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splahview(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SimilarBooksCubitCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(bookModel: state.extra as BookModel)),
      ),
      GoRoute(
        path: '/SearchViewBody',
        builder: (context, state) => const SerachView(),
      ),
    ],
  );
}
