import 'package:flutter_application_1/components/importer.dart';

void timeCardSetDB(String title, String id) {
  String year = "1111";
  String days = "0111";
  int time = 1220;
  
  FirebaseFirestore.instance
      .collection(SettingsFirebase.collection)
      .doc(id)
      .collection(year)
      .doc(days)
      .set({title: time});
}
