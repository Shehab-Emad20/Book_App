import 'package:bookly/feature/book_details_view.dart';
import 'package:bookly/feature/home_view.dart';
import 'package:bookly/serach/presentaion/views/serach_view.dart';
import 'package:bookly/splash/presentation/views/splashview.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/SearchViewBody',
        builder: (context, state) => const SerachView(),
      ),
    ],
  );
}

class SearchView {
  const SearchView();
}
