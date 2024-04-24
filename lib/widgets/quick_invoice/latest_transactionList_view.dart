import 'package:flutter/material.dart';
import 'package:resposeveui/utils/assets.dart';
import 'package:resposeveui/model/user_info_model.dart';
import 'package:resposeveui/widgets/quick_invoice/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfoModel
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
//8:8:00