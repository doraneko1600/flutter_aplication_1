import 'package:flutter_application_1/components/importer.dart';
import 'package:flutter_application_1/components/user/user.dart';
import '../common/bottom_navigation.dart';

void main() => runApp(const MainApp());

// mainから実行される関数
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // タブタイトル
  static const String _title = 'Flutter Code Sample Cupertino';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Root(),
    );
  }
}
