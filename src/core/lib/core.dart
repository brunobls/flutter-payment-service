library core;

import 'package:flutter/material.dart';

typedef WidgetBuilderArgs = Widget Function(BuildContext context, Object? args);
late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

abstract class BuilderBase {
  List<Module> get modules;

  Map<String, WidgetBuilderArgs> get builderRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouters() {
    if (builderRoutes.isNotEmpty) routes.addAll(builderRoutes);
    if (modules.isNotEmpty) {
      for (Module module in modules) {
        routes.addAll(module.routes);
      }
    }
  }

  void registerInjections() {
    if (modules.isNotEmpty) {
      for (Module module in modules) {
        module.registerInjections();
      }
    }
  }

  void registerListeners() {
    if (modules.isNotEmpty) {
      for (Module module in modules) {
        module.registerListeners();
      }
    }
  }

  Route<dynamic>? generateRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;

    var navigateTo = routes[routerName];
    if (navigateTo == null) return null;

    return MaterialPageRoute(
      builder: (context) => navigateTo.call(context, routerArgs),
    );
  }
}

abstract class Module {
  String get moduleName;

  Map<String, WidgetBuilderArgs> get routes;

  void Function() get registerInjections;

  void Function() get registerListeners;
}
