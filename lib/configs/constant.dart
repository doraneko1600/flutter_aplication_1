import 'package:flutter_application_1/components/importer.dart';

// firebase用定数
class SettingsFirebase {
  static const String collection = 'test';
  static const String locationLatitude = 'activeLocationLatitude';
  static const String locationLongitude = 'activeLocationLongitude';
}

// home page
class HomePageConstant {
  static const String homeAppBar = "ホーム";
}

// user page
class UserPageConstant {
  static const String userAppBar = "ユーザー";
  static const String userInfoText = "アカウント情報";
  static const IconData userInfoIcon = Icons.subtitles_rounded;
}
