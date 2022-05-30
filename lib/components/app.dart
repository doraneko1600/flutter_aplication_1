import 'package:flutter_application_1/components/importer.dart';
// mainから実行される関数
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // タブタイトル
  static const String _title = '出退勤アプリ';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: BottomNavigation(),
    );
  }
}
