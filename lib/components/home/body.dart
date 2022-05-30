import 'package:flutter_application_1/components/importer.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: ElevatedButtonWidget(title: "出勤"),
                  ),
                  ElevatedButtonWidget(title: "退勤"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: ElevatedButtonWidget(title: "休憩開始"),
                  ),
                  ElevatedButtonWidget(title: "休憩終了"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
