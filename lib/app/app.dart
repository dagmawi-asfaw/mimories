import 'package:flutter/material.dart';
import 'package:mimories/constants/routes_constant.dart';
import 'package:stacked/stacked_annotations.dart';

import '../services/services.dart';
import '../ui/views/normalform/normalform_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [],
// @stacked-route
/*  routes: [
    MaterialRoute(
      page: HomePageView,
      initial: true,
    ),
    MaterialRoute(
      page: MiformView,
    ),
// @stacked-route
  ],*/
  dependencies: [
    LazySingleton(
      classType: ApiService,
    ),
    LazySingleton(
      classType: UserService,
    ),
    // @stacked-service
  ],
)
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
/*    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homePageView,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );*/
  }
}
