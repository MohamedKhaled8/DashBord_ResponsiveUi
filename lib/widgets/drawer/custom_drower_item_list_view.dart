import 'package:flutter/material.dart';
import '../../model/drower_item_model.dart';
import 'package:resposeveui/widgets/drawer/custom_drawer_item.dart';

class CustomDrowerItemListView extends StatefulWidget {
  final List<DrawerItemModel> items;
  const CustomDrowerItemListView({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomDrowerItemListView> createState() =>
      _CustomDrowerItemListViewState();
}

class _CustomDrowerItemListViewState extends State<CustomDrowerItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomDraweItem(
                drawerItemModel: widget.items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
