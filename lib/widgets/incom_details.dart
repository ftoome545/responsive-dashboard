import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/item_details_model.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});
  static const List items = [
    ItemDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return ItemDetails(itemDetailsModel: items[index]);
    //     });
  }
}
