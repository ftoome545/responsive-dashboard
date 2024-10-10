import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotIndictor extends StatelessWidget {
  const DotIndictor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => const Padding(
                padding: EdgeInsets.only(right: 8),
                child: CustomDot(isActive: false),
              )),
    );
  }
}
