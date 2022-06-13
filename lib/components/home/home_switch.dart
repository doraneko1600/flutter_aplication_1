import 'package:flutter_application_1/components/importer.dart';

dynamic flag;
homeSwitchMethod() {
  flagManagement();
  // flagManagement();
  print("c${flag}");
  switch (flag) {
    case 0:
      return ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon,
          flag: 1); //　出勤ボタン
    case 1:
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon,
              flag: 0), // 退勤ボタン
          const SizedBox(height: 35.0),
          ElevatedButtonWidget(
              title: HomePageConstant.homeBreakBeginsText,
              icon: HomePageConstant.homeBreakBeginsIcon,
              flag: 2), // 休憩開始ボタン
        ],
      );
    case 2:
      return ElevatedButtonWidget(
          title: HomePageConstant.homeBreakEndsText,
          icon: HomePageConstant.homeBreakEndsIcon,
          flag: 1); // 休憩終了ボタン
  }
}
