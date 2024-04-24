import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:resposeveui/utils/app_styles.dart';
import 'package:resposeveui/model/user_info_model.dart';


class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;

  const UserInfoListTile({
    Key? key,
    required this.userInfoModel,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular16(context),
          ),
        ),
      ),
    );
  }
}
