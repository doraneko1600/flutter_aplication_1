import '../importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  final String title;
  @override
  // オブジェクト引数を使用
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('出勤');
      },
      child: Text(
        title,
      ),
    );
  }
}
