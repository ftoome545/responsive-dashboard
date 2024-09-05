import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expanses_header.dart';
import 'package:responsive_dashboard/widgets/all_expanses_item_listview.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: const Column(
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
