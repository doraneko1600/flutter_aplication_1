import 'package:flutter_application_1/components/importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    String id = "1";
    return ElevatedButton.icon(
      onPressed: () {
        timeCardSetDB(title, id);
      },
      icon: Icon(
        icon,
      ),
      label: Text(
        title,
      ),
    );
  }
}
