import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:resposeveui/utils/app_styles.dart';
import 'package:resposeveui/widgets/expenses/custom_range_opthions.dart';


class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions(),
      ],
    );
  }
}
