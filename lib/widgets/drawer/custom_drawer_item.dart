import 'package:flutter/material.dart';
import 'package:resposeveui/model/drower_item_model.dart';
import 'package:resposeveui/widgets/drawer/custom_active_drawer_items.dart';
import 'package:resposeveui/widgets/drawer/custom_in_active_drawer_items.dart';

class CustomDraweItem extends StatelessWidget {
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  const CustomDraweItem({
    Key? key,
    required this.isActive,
    required this.drawerItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomActiveDrawerItems(
            drawerItemModel: drawerItemModel,
          )
        : CustomInActiveDrawerItems(drawerItemModel: drawerItemModel);
  }
}
