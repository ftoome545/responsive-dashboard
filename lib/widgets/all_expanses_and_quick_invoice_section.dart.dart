import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpansesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpanses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
