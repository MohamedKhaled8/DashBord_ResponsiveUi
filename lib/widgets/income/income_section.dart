import 'income_section_body.dart';
import 'income_section_header.dart';
import 'package:flutter/material.dart';
import 'package:resposeveui/widgets/shard/cusrom_backgound_container.dart';




class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}
