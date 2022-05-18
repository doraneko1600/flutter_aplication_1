import '../components/importer.dart';
import '../components/app.dart';
import '../components/user/user.dart';
import '../components/home/home.dart';
import '../components/search/search.dart';

const userIcon = CupertinoIcons.person; // ユーザーアイコン
const homeIcon = CupertinoIcons.home; // ホームアイコン
const searchIcon = CupertinoIcons.search; // 検索アイコン

class BottomNavigationBar extends StatefulWidget {
  const BottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  // ページインデックス保存用
  int _screen = 0;
  // 表示する Widget の一覧
  static List<Widget> _pageList = [
    UserPage(),
    HomePage(),
    SearchPage()
    ];
  // ページ下部に並べるナビゲーションメニューの一覧
  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Sample Code'),
      ),
      child: ListView(
        children: <Widget>[
          Center(
            child: Text('テスト'),
          ),
        ],
      ),
    );
  }
}
