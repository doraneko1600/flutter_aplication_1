import 'package:flutter_application_1/components/importer.dart';

// mainから実行される関数
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // タブタイトル
  static const String _title = '出退勤アプリ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(),
      ),
        title: _title,
        // OSのダークモード対応
        // theme: ThemeData.light(),
        // darkTheme: ThemeData.dark(),
        home: BottomNavigation(),
    );
  }
}
