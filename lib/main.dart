import 'package:flutter_application_1/components/importer.dart';

void main() async {
  // 時間取得用
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 位置情報取得 順番大事
  determinePosition();
  // MainApp実行
  runApp(const MainApp());
}
