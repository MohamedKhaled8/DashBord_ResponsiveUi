import '../../utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../model/drower_item_model.dart';


class CustomActiveDrawerItems extends StatelessWidget {
  const CustomActiveDrawerItems({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}