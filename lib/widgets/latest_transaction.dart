import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBackgroundContainer(
          child: Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        LatestTransactionListView(),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}
