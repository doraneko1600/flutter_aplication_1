import '../components/importer.dart';
import '../components/app.dart';
import '../components/user/user.dart';
import '../components/home/home.dart';
import '../components/search/search.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _currentIndex = 0;
  final _pageWidgets = [
    //bodyの部分をここで設定
    const HomePage(),
    const UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(43.0),
        child: AppBar(
          title: const Text('タイトル'),
          elevation: 0,
        ),
      ),
      body: _pageWidgets.elementAt(
        _currentIndex,
      ),
      bottomNavigationBar: Container(
        height: 48,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 0.1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                _onItemTapped(0);
              },
              child: const Icon(
                Icons.home,
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(1);
              },
              child: const Icon(
                Icons.person,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}
