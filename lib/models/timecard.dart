import 'package:flutter_application_1/components/importer.dart';

void timeCardSetDB(String title, String id) {
  // 現在の日時取得
  DateTime now = DateTime.now();

  // 現在の日時から年、月日を抽出。文字列にキャスト
  String year = DateFormat('yyyy').format(now).toString();
  String days = DateFormat('MMdd').format(now).toString();
  int time = 1220;

  FirebaseFirestore.instance
      .collection(SettingsFirebase.collection)
      .doc(id)
      .collection(year)
      .doc(days)
      .set({title: time});
}
