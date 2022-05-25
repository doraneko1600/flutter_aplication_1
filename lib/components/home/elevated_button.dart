import 'package:flutter_application_1/components/importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    String id = "1";
    return ElevatedButton(
      onPressed: () {
        timeCardSetDB(title, id);
      },
      child: Text(
        title,
      ),
    );
  }
}
