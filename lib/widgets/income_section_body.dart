import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/details_income_chart.dart';
import 'package:responsive_dashboard/widgets/incom_details.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // log(width.toString());
    return width >= SizeConfig.desktop && width < 1850
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailsIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomDetails()),
            ],
          );
  }
}
