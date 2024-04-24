import 'package:flutter/material.dart';
import 'custom_drower_item_list_view.dart';
import 'package:resposeveui/utils/assets.dart';
import 'package:resposeveui/model/user_info_model.dart';
import 'package:resposeveui/model/drower_item_model.dart';
import 'package:resposeveui/widgets/quick_invoice/user_info_list_tile.dart';
import 'package:resposeveui/widgets/drawer/custom_in_active_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar1,
                  title: 'Lekan Okeowo',
                  subTitle: "demo@gmail.com"),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          CustomDrowerItemListView(
            items: items,
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                CustomInActiveDrawerItems(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.imagesSettings)),
                CustomInActiveDrawerItems(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
