import 'package:flutter_application_1/components/importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key, required this.title, required this.icon, required this.flag})
      : super(key: key);

  final String title;
  final IconData icon;
  final int flag;
  @override
  Widget build(BuildContext context) {
    String id = "1";
    return ElevatedButton.icon(
      onPressed: () {
        timeCardSetDB(title, id);
        flagSet(flag);
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
