import '../importer.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    String title,
    Key? key,
  }) : super(key: key);

  final String title;
  @override
  // オブジェクト引数を使用
  Widget build(BuildContext context, {this.title}) {
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
