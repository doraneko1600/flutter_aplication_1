import 'package:flutter_application_1/components/importer.dart';

class ElevatedButtonWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  int flag;

  ElevatedButtonWidget(
      {Key? key, required this.title, required this.icon, required this.flag})
      : super(key: key);

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    String id = "1";
    return ElevatedButton.icon(
      onPressed: () {
        timeCardSetDB(widget.title, id);
        flagSet(widget.flag);
      },
      icon: Icon(
        widget.icon,
      ),
      label: Text(
        widget.title,
      ),
    );
  }
}
