import '../components/importer.dart';
import '../components/app.dart';

const userIcon = CupertinoIcons.person; // ユーザーアイコン
const homeIcon = CupertinoIcons.home; // ホームアイコン
const searchIcon = CupertinoIcons.search; // 検索アイコン

class BottomNavigationBar extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(userIcon),
            label: 'ユーザー',
          ),
          BottomNavigationBarItem(
            icon: Icon(homeIcon),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(searchIcon),
            label: '検索',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                leading: Icon(userIcon),
              ),
              child: UserScreen(),
            );
        }
      },
    );
  }
}
