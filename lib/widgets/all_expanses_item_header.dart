import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
              color: imageBackground ?? const Color(0xFFF1F1F1),
              shape: const OvalBorder()),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Transform.rotate(
                angle: -1.57079633 * 2,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: imageBackground == null
                      ? const Color(0xFF064060)
                      : Colors.white,
                )))
      ],
    );
  }
}