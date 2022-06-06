import 'package:flutter_application_1/components/importer.dart';

Row userLogOutMethod(String text) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
        child: ElevatedButton(
          onPressed: () {
            print('Button pressed ...');
          },
          child: Text(
            text,
          ),
        ),
      ),
    ],
  );
}
