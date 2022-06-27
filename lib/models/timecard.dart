import 'package:flutter_application_1/components/importer.dart';

Future<void> timeCardSetDB(
    {required String title, required String id, required int flag}) async {
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
      "$flag-$title": time,
      "$flag-${SettingsFirebase.locationLatitude}": position.latitude,
      "$flag-${SettingsFirebase.locationLongitude}": position.longitude,
    },SetOptions(merge: true));


}
