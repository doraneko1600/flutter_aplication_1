import '../components/importer.dart';

class _BottomNavigationBar extends State<MyStatefulWidget> {
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