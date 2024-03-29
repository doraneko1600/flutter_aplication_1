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
        child: StreamBuilder<DocumentSnapshot>(
          // stream: flagManagement(),
          stream: firestore
              .collection(SettingsFirebase.collection)
              .doc('1')
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            int flag = snapshot.hasData ? snapshot.data!['flag'] : 0;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("waiting");
            }
            print("builder:${flag}");
            switch (flag) {
              case 1:
                return AnimatedButton(
                    title: HomePageConstant.homeGoToWorkText,
                    icon: HomePageConstant.homeGoToWorkIcon,
                    flag: 2,
                    id: "1"); // 出勤ボタン
              case 2:
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedButton(
                        title: HomePageConstant.homeLeavingWorkText,
                        icon: HomePageConstant.homeLeavingWorkIcon,
                        flag: 1,
                        id: "1"), // 退勤ボタン
                    const SizedBox(height: 35.0),
                    AnimatedButton(
                        title: HomePageConstant.homeBreakBeginsText,
                        icon: HomePageConstant.homeBreakBeginsIcon,
                        flag: 3,
                        id: "1"), // 休憩開始ボタン
                  ],
                );
              case 3:
                return AnimatedButton(
                    title: HomePageConstant.homeBreakEndsText,
                    icon: HomePageConstant.homeBreakEndsIcon,
                    flag: 2,
                    id: "1"); // 休憩終了ボタン
            }
            return Text("flag${flag.toString()}");
          },
        ),
      ),
    );
  }
}
