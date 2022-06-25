import 'package:flutter_application_1/components/importer.dart';

class UserPageBody extends StatefulWidget {
  const UserPageBody({Key? key}) : super(key: key);

  @override
  State<UserPageBody> createState() => _UserPageBodyState();
}

class _UserPageBodyState extends State<UserPageBody> {
  String userName = "name";
  String userEmail = "test@testes";
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              userInfoMethod(context, userName, userEmail),
            ],
          ),

          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              userListViewMethod(
                context: context,
                text: UserPageConstant.userInfoText,
                icon: UserPageConstant.userInfoIcon
              ),
              userListViewMethod(
                context: context,
                text: UserPageConstant.userWorkingTimeText,
                icon: UserPageConstant.userWorkingTimeIcon
              ),
              userListViewMethod(
                context: context,
                text: UserPageConstant.userContactText,
                icon: UserPageConstant.userContactIcon
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
            child: userLogOutMethod(UserPageConstant.userLogOutText),
          ),
        ],
      ),
    );
  }

  

  
}
