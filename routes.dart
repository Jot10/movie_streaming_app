import 'package:go_router/go_router.dart';
import 'package:movie_streaming/custom/previewpage.dart';
import 'package:movie_streaming/navscreen.dart';
import 'package:movie_streaming/pages/home/popular.dart';
import 'package:movie_streaming/pages/home/register.dart';
import 'package:movie_streaming/pages/home/search.dart';
import 'package:movie_streaming/pages/home/signin.dart';
import 'package:movie_streaming/pages/home/trending.dart';
import 'package:movie_streaming/pages/profile/contact.dart';
import 'package:movie_streaming/pages/profile/general.dart';
import 'package:movie_streaming/splash.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => SplashScreen(),
  ),
  GoRoute(
      path: '/navigation',
      builder: (context, state) => bottomnavigation(),
      routes: [
        GoRoute(
          path: 'search',
          builder: (context, state) => searchPage(),
        ),
        GoRoute(path: 'signin', builder: (context, state) => signIn(), routes: [
          GoRoute(
            path: 'registration',
            builder: (context, state) => Registration(),
          )
        ]),
        GoRoute(
          path: 'trending',
          builder: (context, state) => trending(),
        ),
        GoRoute(
          path: 'popular',
          builder: (context, state) => popular(),
        ),
        GoRoute(
          path: 'streaming',
          builder: (context, state) => Streaming(),
        ),
        GoRoute(
          path: 'trending',
          builder: (context, state) => trending(),
        ),
        GoRoute(
          path: 'general',
          builder: (context, state) => generalSettings(),
        ),
        GoRoute(
          path: 'contact',
          builder: (context, state) => contactUs(),
        ),
      ])
]);
