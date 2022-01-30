import 'package:core/core.dart';
import 'package:flutter/material.dart';

import 'app/features/splash/presentation/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BuilderBase {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blockchain Reviews",
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: "splash",
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get builderRoutes =>
      {"/splash": (_, __) => const SplashPage()};

  @override
  List<Module> get modules => [];
}
