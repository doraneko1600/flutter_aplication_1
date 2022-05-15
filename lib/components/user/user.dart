import '../importer.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          trailing: Icon(CupertinoIcons.settings),
          middle: Text("Title"),
          leading: Icon(CupertinoIcons.back),
        ),
      ),
    ),
  }
}