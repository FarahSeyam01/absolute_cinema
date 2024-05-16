import 'package:bookly_application/Features/home/presenations/views/film_details_view.dart';
import 'package:bookly_application/Features/home/presenations/views/first_films_list_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';
import '../../Features/about_us/presenations/info_screen.dart';
import '../../Features/home/presenations/views/home_view.dart';

import '../../Features/user/presentation/view_models/views/user_screen.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static const klogin = '/loginView';
  static const kfirstFilmsList = '/firstFilmsList';
  static const kInfoScreen = '/infoScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kInfoScreen ,
        builder: (context, state) => Info_Screen(),
      ),
      GoRoute(
        path: klogin,
        builder: (context, state) => const TotalScreen(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const FilmDetailsView(),
      ),
      GoRoute(
        path: kfirstFilmsList,
        builder: (context, state) => const FirstFilmsListView(),
      ),
    ],
  );
}
