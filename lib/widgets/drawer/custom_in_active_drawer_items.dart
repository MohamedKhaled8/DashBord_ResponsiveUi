import '../../utils/app_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../model/drower_item_model.dart';


class CustomInActiveDrawerItems extends StatelessWidget {
  const CustomInActiveDrawerItems({
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
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}


