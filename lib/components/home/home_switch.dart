import 'package:flutter_application_1/components/importer.dart';

homeSwitchMethod() {
  int flag = flagManagement();
  switch (flag) {
    case 0:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon);
    case 1:
      return Column(
        children: const [
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon),
          ElevatedButtonWidget(
              title: HomePageConstant.homeLeavingWorkText,
              icon: HomePageConstant.homeLeavingWorkIcon),
        ],
      );
    case 2:
      return const ElevatedButtonWidget(
          title: HomePageConstant.homeGoToWorkText,
          icon: HomePageConstant.homeGoToWorkIcon);
  }
}
