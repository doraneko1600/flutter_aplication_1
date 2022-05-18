import '../importer.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('user page')),
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
