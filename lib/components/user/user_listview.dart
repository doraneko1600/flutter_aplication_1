import 'package:flutter_application_1/components/importer.dart';

GestureDetector userListViewMethod(
    {required BuildContext context,
    required String text,
    required IconData icon}) {
  return GestureDetector(
    onTap: () {
      print(text);
      switch (text) {
        case UserPageConstant.userInfoText:
          break;
        case UserPageConstant.userWorkingTimeText:
          break;
        case UserPageConstant.userContactText:
          break;
      }
    },
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                  size: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Text(
                  text,
                ),
              ),
              const Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.9, 0),
                  child: Icon(
                    Icons.chevron_right,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
