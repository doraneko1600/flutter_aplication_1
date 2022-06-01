import 'package:flutter_application_1/components/importer.dart';

Container userInfoMethod(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 270,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Image.asset(
                      'images/header.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 105, 0, 0),
                      child: Container(
                        width: 80,
                        height: 80,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'images/icon.jpeg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
              child: Text(
                userName,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
              child: Text(
                userEmail,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
