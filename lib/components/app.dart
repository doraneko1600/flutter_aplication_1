import 'package:flutter_application_1/components/importer.dart';

// mainから実行される関数
class MainApp extends StatefulWidget {
  const MainApp({ Key? key }) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: kIsWeb
            ? GoogleFonts.sawarabiGothicTextTheme(Theme.of(context).textTheme)
            : null,
      ),
      title: tabTitle,
      // OSのダークモード対応
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // home: BottomNavigation(),
      routes: {
        '/':(context) => BottomNavigation(),
      },
    );
  }
}