import 'package:flutter/material.dart';
import 'custom_quick_invoice_header.dart';
import 'package:resposeveui/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:resposeveui/widgets/shard/custom_background_container.dart';
import 'package:resposeveui/widgets/quick_invoice/latest%20_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGoundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomQuickInvoiceHeader(),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
