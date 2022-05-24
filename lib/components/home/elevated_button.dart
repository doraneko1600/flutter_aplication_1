import '../importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(title);
      },
      child: Text(
        title,
      ),
    );
  }
}
