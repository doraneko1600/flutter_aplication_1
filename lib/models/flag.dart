import 'package:flutter_application_1/components/importer.dart';

void flagSet(int flag) {
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .set({'flag': flag});
}

void flagManagement() {
  print("a${flag}");
  // firestore
  //     .collection(SettingsFirebase.collection)
  //     .doc('1')
  //     .get()
  //     .then((DocumentSnapshot snapshot) {
  //   flag = snapshot.get('flag');
  //   print("flag${flag}");
  // });
  print("b${flag}");
}
