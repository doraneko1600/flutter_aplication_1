import '../importer.dart';

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
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        print('出勤');
                      },
                      child: const Text(
                        '出勤',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('退勤');
                    },
                    child: const Text(
                      '退勤',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        print('休憩開始');
                      },
                      child: const Text(
                        '休憩開始',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('休憩終了');
                    },
                    child: const Text(
                      '休憩終了',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
