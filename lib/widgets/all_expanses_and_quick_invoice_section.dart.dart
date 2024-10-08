import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpansesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpansesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpanses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
