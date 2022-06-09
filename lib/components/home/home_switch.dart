import 'package:flutter_application_1/components/importer.dart';

homeSwitchMethod() {
  flagManagement();
  // flagManagement();
  switch (flag) {
    case 0:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon,
          flag: 1);
    case 1:
      return Column(
        children: const [
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon,
              flag: 0),
          ElevatedButtonWidget(
              title: HomePageConstant.homeBreakBeginsText,
              icon: HomePageConstant.homeBreakBeginsIcon,
              flag: 2),
        ],
      );
    case 2:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeBreakEndsText,
          icon: HomePageConstant.homeBreakEndsIcon,
          flag: 1);
  }
}
