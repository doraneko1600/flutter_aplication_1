import 'components/importer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MyTheme(),
      child: Consumer<MyTheme>(
        builder: (context, theme, _) {
          return MaterialApp(
            theme: theme.current,
            home: MyHomePage(title: 'Example'),
          );
        },
      ),
    );
  }
}

// テーマ変更用の状態クラス
class MyTheme extends ChangeNotifier {
  ThemeData current = ThemeData.light();
  bool _isDark = false;

  // トグルでテーマを切り替える関数
  toggle() {
    _isDark = !_isDark;
    current = _isDark ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('テーマ切替テスト'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
          Provider.of<MyTheme>(context, listen: false).toggle();
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
  // State<MyHomePage> createState() => _MyHomePageState();
}

/*
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '追加する',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
*/