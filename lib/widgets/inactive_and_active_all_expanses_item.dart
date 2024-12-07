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
              side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemibold24(context),
            ),
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
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
              borderRadius: BorderRadius.circular(12))),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemibold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
