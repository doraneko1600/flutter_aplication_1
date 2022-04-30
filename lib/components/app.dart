import 'importer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  int currentIndex = 1;
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'ユーザー',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: '検索',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index'),
            );
          },
        );
      },
    );
  }
}
