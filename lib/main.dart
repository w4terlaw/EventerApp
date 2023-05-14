import 'package:flutter/widgets.dart';

import 'app.dart';
import 'service/locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const App());
}
