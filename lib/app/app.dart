import 'package:flutter/material.dart';
import 'package:mimories/ui/views/homepage/homepage_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/services.dart';
import 'app.router.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(
      page: HomePageView,
    ),
    // @stacked-route
  ],
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
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      initialRoute: Routes.homePageView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
