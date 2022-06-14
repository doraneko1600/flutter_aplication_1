import 'package:flutter_application_1/components/importer.dart';

void flagSet(int flag) {
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .set({'flag': flag});
}

Future<int> flagManagement() async {
  print("mng-start:${flag}");
  try {
    await firestore
        .collection(SettingsFirebase.collection)
        .doc('1')
        .get()
        .then((DocumentSnapshot snapshot) {
      flag = snapshot.get('flag');
      print("flag:${flag}");
    });
  } catch (e) {
    print(e);
  }

  return flag;
}
