import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expanses_item_header.dart';

class InActiveAllExpansesItem extends StatelessWidget {
  const InActiveAllExpansesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpansesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemibold24,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpansesItem extends StatelessWidget {
  const ActiveAllExpansesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpansesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemibold24.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
