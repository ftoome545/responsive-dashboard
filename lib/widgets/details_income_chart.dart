import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailsIncomeChart extends StatefulWidget {
  const DetailsIncomeChart({super.key});

  @override
  State<DetailsIncomeChart> createState() => _DetailsIncomeChartState();
}

class _DetailsIncomeChartState extends State<DetailsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartDatat()));
  }

  PieChartData getChartDatat() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;

            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            title: activeIndex == 0 ? 'Design service' : '40%',
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
