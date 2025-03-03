import 'package:bhoncharuk_flutter_template/app/entry_point.dart';
import 'package:bhoncharuk_flutter_template/use_case/app/init_app.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  await const InitializeApp().execute(params: () => runApp(const EntryPoint()));
}
