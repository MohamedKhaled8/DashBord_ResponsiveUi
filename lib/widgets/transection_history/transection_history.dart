import 'package:flutter/material.dart';
import 'package:resposeveui/utils/app_styles.dart';
import 'package:resposeveui/widgets/transection_history/transection_history_header.dart';
import 'package:resposeveui/widgets/transection_history/transction_history_list_view.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TrasnctionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context)
        ),
        const SizedBox(
          height: 16,
        ),
        const TransctionHistoryListView(),
      ],
    );
  }
}
