import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/widgets/inactive_and_active_all_expanses_item.dart';

class AllExpansesItem extends StatelessWidget {
  const AllExpansesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpansesItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpansesItem(itemModel: itemModel)
        : InActiveAllExpansesItem(itemModel: itemModel);
  }
}
