import 'package:flutter_application_1/components/importer.dart';

// タブタイトル
const String tabTitle = "出退勤アプリ";

// firebase用定数
class SettingsFirebase {
  static const String collection = 'test';
  static const String locationLatitude = 'activeLocationLatitude';
  static const String locationLongitude = 'activeLocationLongitude';
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

// StreamController
final streamController = StreamController<int>();

// home page
class HomePageConstant {
  static const String homeAppBar = "ホーム";

  static const String homeGoToWorkText = "出勤";
  static const IconData homeGoToWorkIcon = Icons.work_outline_rounded;

  static const String homeLeavingWorkText = "退勤";
  static const IconData homeLeavingWorkIcon = Icons.directions_run_rounded;

  static const String homeBreakBeginsText = "休憩開始";
  static const IconData homeBreakBeginsIcon = Icons.free_breakfast_rounded;

  static const String homeBreakEndsText = "休憩終了";
  static const IconData homeBreakEndsIcon = Icons.restart_alt_rounded;
}

// user page
class UserPageConstant {
  static const String userAppBar = "ユーザー";

  static const String userInfoText = "アカウント編集";
  static const IconData userInfoIcon = Icons.manage_accounts_rounded;
  static const String userWorkingTimeText = "累計勤務時間";
  static const IconData userWorkingTimeIcon = Icons.access_time_rounded;
  static const String userContactText = "アプリのお問合せ";
  static const IconData userContactIcon = Icons.contact_support_rounded;

  static const String userLogOutText = "ログアウト";
}

dynamic flag;
