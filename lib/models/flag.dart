import 'package:flutter_application_1/components/importer.dart';

void flagSet(int flag) {
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .set({'flag': flag});
}

Stream<QuerySnapshot> flagManagement() async* {
  print("start");
  await Future<void>.delayed(const Duration(seconds: 1));
  firestore
      .collection(SettingsFirebase.collection)
      .doc('1')
      .snapshots()
      .listen((DocumentSnapshot snapshot) {
    flag = snapshot.get('flag');
    print("mng:${snapshot.get('flag')}");
    print("mng:${snapshot}");
  });
  print("flag:${flag}");
}
