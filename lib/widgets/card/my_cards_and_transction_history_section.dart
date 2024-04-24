import 'package:flutter/material.dart';
import 'package:resposeveui/widgets/card/my_card_section.dart';
import 'package:resposeveui/widgets/shard/cusrom_backgound_container.dart';
import 'package:resposeveui/widgets/transection_history/transection_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TrasnctionHistory(),
      ],
    ));
  }
}
