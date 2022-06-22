import 'package:flutter_application_1/components/importer.dart';

Stream<Widget> homeSwitchMethod({required int flag}) async* {
  print("start method");
   switch (flag) {
    case 1:
      yield ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon,
          flag: 2); // 出勤ボタン
          break;
    case 2:
      yield Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon,
              flag: 1), // 退勤ボタン
          const SizedBox(height: 35.0),
          ElevatedButtonWidget(
              title: HomePageConstant.homeBreakBeginsText,
              icon: HomePageConstant.homeBreakBeginsIcon,
              flag: 3), // 休憩開始ボタン
        ],
      );
      break;
    case 3:
      yield ElevatedButtonWidget(
          title: HomePageConstant.homeBreakEndsText,
          icon: HomePageConstant.homeBreakEndsIcon,
          flag: 3); // 休憩終了ボタン
          break;
    default:
      print("switch:${flag}");
      yield Text("data");
  }
}
