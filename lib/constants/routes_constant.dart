import 'package:go_router/go_router.dart';
import 'package:mimories/ui/views/homepage/homepage_view.dart';
import 'package:mimories/ui/views/miform/miform_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePageView(),
    ),
    GoRoute(
      path: '/form',
      builder: (context, state) => MiformView(),
    )
  ],
);
