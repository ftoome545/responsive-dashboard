import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
              color: Color(0xFFF1F1F1), shape: OvalBorder()),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Transform.rotate(
                angle: -1.57079633 * 2,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xFF064060),
                )))
      ],
    );
  }
}
