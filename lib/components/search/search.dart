import '../importer.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('search page')),
      child: ListView(
        children: <Widget>[
          CupertinoButton(
            onPressed: () => setState(() => _count++),
            child: const Icon(CupertinoIcons.add),
          ),
          Center(
            child: Text('text'),
          ),
        ],
      ),
    );
  }
}
