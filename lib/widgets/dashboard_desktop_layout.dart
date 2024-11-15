import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses_and_quick_invoice_section.dart.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: AllExpansesAndQuickInvoiceSection(),
                          )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardAndTransactionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(child: IncomeSection()),
                        ],
                      )),
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
