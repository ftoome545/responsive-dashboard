import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses_and_quick_invoice_section.dart.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpansesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: MyCardAndTransactionHistorySection(),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: IncomeSection(),
          ),
        ],
      ),
    );
  }
}
