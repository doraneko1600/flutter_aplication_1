import 'package:flutter_application_1/components/importer.dart';
import 'package:flutter_application_1/components/app.dart';

void main() async {
  try {
    determinePosition();
  } catch (e) {
    print(e);
  }
  // 時間取得用
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // MainApp実行
  runApp(const MainApp());
}
