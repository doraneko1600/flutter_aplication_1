import '../components/importer.dart';
// import '../components/app.dart';
import '../components/user/user.dart';
import '../components/home/home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final _pageWidgets = [
    //bodyの部分をここで設定
    const HomePage(),
    const UserPage(),
  ];

  // 初期選択
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'アカウント'),
          ],
          type: BottomNavigationBarType.fixed,
        )
    );
  }
}
