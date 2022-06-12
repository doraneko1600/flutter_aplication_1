import 'package:flutter_application_1/components/importer.dart';

dynamic flag;
homeSwitchMethod() {
  flagManagement();
  // flagManagement();
  switch (flag) {
    case 0:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon,
          flag: 1); //　出勤ボタン
    case 1:
      return Column(
        children: const [
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon,
              flag: 0), // 退勤ボタン
          ElevatedButtonWidget(
              title: HomePageConstant.homeBreakBeginsText,
              icon: HomePageConstant.homeBreakBeginsIcon,
              flag: 2), // 休憩開始ボタン
        ],
      );
    case 2:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeBreakEndsText,
          icon: HomePageConstant.homeBreakEndsIcon,
          flag: 1); // 休憩終了ボタン
  }
}
