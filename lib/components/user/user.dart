import '../importer.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CupertinoNavigationBar(
          trailing: Icon(CupertinoIcons.settings),
          middle: Text("Title"),
          leading: Icon(CupertinoIcons.back),
        ),
  }
}