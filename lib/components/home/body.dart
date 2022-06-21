import 'package:flutter_application_1/components/importer.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: StreamBuilder(
          // stream: flagManagement(),
          stream: firestore.collection(SettingsFirebase.collection).doc('1').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            // homeSwitchMethod();
            print("builder:${snapshot}");
            if (snapshot.hasData) {
              // homeSwitchMethod(flag: snapshot);
              return Text("${snapshot}");
            } else {
              return Text("データが存在しません${snapshot}");
            }
          },
        ),
      ),
    );
  }
}
