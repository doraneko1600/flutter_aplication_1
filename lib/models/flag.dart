import 'package:flutter_application_1/components/importer.dart';

int flagManagement() {
  FirebaseFirestore.instance.collection(SettingsFirebase.collection)
      .doc(id).snapshots().listen((DocumentSnapshot snapshot) {
      print(snapshot.get('name'));
});
  return 0;
}
