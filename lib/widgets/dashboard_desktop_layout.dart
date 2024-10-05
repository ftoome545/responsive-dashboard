import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses_and_quick_invoice_section.dart.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

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
        Expanded(flex: 3, child: AllExpansesAndQuickInvoiceSection()),
        Expanded(flex: 2, child: SizedBox()),
      ],
    );
  }
}
