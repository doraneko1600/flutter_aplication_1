import 'components/importer.dart';
import 'components/app.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}