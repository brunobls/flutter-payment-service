library digital_account;

import 'package:core/core.dart';

import 'core/inject.dart';

class DigitalAccountService implements Service {
  @override
  void Function() get registerInjections => Inject.initialize;

  @override
  void Function() get registerListeners => () {};

  @override
  String get serviceName => "service_digital-account";
}
