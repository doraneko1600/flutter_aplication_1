import 'package:flutter_application_1/components/importer.dart';

Future<void> timeCardSetDB(String title, String id) async {
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best);
  // print(position);
  // 現在の日時取得
  DateTime now = DateTime.now();

  // 現在の日時から年、月日を取得
  String year = DateFormat('yyyy').format(now);
  String days = DateFormat('MMdd').format(now);
  String time = DateFormat('HHmm').format(now);

  firestore
      .collection(SettingsFirebase.collection)
      .doc(id)
      .collection(year)
      .doc(days)
      .set({
    title: time,
    SettingsFirebase.locationLatitude: position.latitude,
    SettingsFirebase.locationLongitude: position.longitude
  });
}
