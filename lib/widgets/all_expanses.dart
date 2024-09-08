import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses_header.dart';
import 'package:responsive_dashboard/widgets/all_expanses_item_listview.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpansesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpansesItemListview(),
        ],
      ),
    );
  }
}
