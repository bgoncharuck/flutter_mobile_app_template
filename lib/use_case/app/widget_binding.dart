import 'package:bhoncharuk_flutter_template/app/widgets_binding.dart';
import 'package:bhoncharuk_flutter_template/use_case/i_use_case.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ConfigWidgetsBinding with IUseCase<void, void> {
  const ConfigWidgetsBinding();

  @override
  Future<void> execute({void params}) async {
    widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    widgetsBinding.preserveSplashScreen();
  }
}
