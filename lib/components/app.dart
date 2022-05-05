import 'importer.dart';
import '../common/bottom_navigation.dart';

// mainから実行される関数
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // タブタイトル
  static const String _title = 'Flutter Code Sample Cupertino';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _BottomNavigationBar();
}
