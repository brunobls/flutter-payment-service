import 'package:core/core.dart';
import 'package:digital_account/digital_account.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

import 'app/features/splash/presentation/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BuilderBase {
  MyApp() {
    super.registerInjections();
    super.registerRouters();
    super.registerListeners();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BlockchainReviews",
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/splash',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get builderRoutes => {
        '/splash': (_, __) => const SplashPage(),
      };

  @override
  List<Module> get modules => [
        HomeModule(),
      ];

  @override
  List<Service> get services => [
        DigitalAccountService(),
      ];
}
