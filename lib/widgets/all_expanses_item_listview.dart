import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expanses_item.dart';

class AllExpansesItemListview extends StatefulWidget {
  const AllExpansesItemListview({super.key});

  @override
  State<AllExpansesItemListview> createState() =>
      _AllExpansesItemListviewState();
}

class _AllExpansesItemListviewState extends State<AllExpansesItemListview> {
  final List items = [
    const AllExpansesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$24,129'),
    const AllExpansesItemModel(
        image: Assets.imagesIncome,
        title: 'Incom',
        date: 'April 2022',
        price: r'$24,129'),
    const AllExpansesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$24,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      /* With map((e)) you can not assecc the index of each item, but asMap can 
      do that using entries it is like index and has key and value.*/
      // children: items.map((e) => AllExpansesItem(itemModel: e)).toList();
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpansesItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
