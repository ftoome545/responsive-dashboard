import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemibold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
              color: Color(0xffFAFAFA), shape: OvalBorder()),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              )),
        ),
      ],
    );
  }
}
