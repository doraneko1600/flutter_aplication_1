import 'package:flutter_application_1/components/importer.dart';

void flagSet(int flag) {
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .set({'flag': flag});
}

flagManagement() {
  print("start");
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .snapshots();
  print("flag:${flag}");
}
