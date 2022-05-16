import '../components/importer.dart';
import '../components/app.dart';
import '../components/user/user.dart';

const userIcon = CupertinoIcons.person; // ユーザーアイコン
const homeIcon = CupertinoIcons.home; // ホームアイコン
const searchIcon = CupertinoIcons.search; // 検索アイコン

class BottomNavigationBar extends State<MyStatefulWidget> {
  // ページインデックス保存用
  int _screen = 0;
  // 表示する Widget の一覧
  static List<Widget> _pageList = [
    UserPage(),
    CloudScreen(),
    CakeScreen()
  ];
  // ページ下部に並べるナビゲーションメニューの一覧
  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Book',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cloud),
        label: 'Cloud',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.cake),
        label: 'Cake',
      ),
    ];
  }
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
      tabBuilder: (context, index) {
        switch (index) {
          case 0: // 一番左のタブ
            return Container(
              child: Text('Settings'),
              alignment: Alignment.center,
              color: Colors.green[100],
            );
          case 1: // 一番左のタブ
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  leading: Icon(userIcon),
                ),
                child: UserPage(),
              );
            });
          case 3: // 一番左のタブ
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  leading: Icon(userIcon),
                ),
                child: UserPage(),
              );
            });
        }
      }
    );
  }
}
