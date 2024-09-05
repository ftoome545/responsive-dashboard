import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expanses_item.dart';

class AllExpansesItemListview extends StatelessWidget {
  const AllExpansesItemListview({super.key});

  static const List items = [
    AllExpansesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$24,129'),
    AllExpansesItemModel(
        image: Assets.imagesIncome,
        title: 'Incom',
        date: 'April 2022',
        price: r'$24,129'),
    AllExpansesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$24,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      /* With map((e)) you can not assecc the index of each item, but asMap can 
      do that using entries it is like index and has key and value.*/
      // children: items.map((e) => AllExpansesItem(itemModel: e)).toList();
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpansesItem(itemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpansesItem(itemModel: item));
        }
      }).toList(),
    );
  }
}
