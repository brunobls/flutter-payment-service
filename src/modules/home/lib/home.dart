library home;

import 'package:core/core.dart';
import 'package:home/presentation/ui/pages/home_page.dart';

class HomeModule implements Module {
  @override
  String get moduleName => "module_home";

  @override
  void Function() get registerInjections => () {};

  @override
  void Function() get registerListeners => () {};

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        "/home": (context, args) => const HomePage(),
      };
}
