import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: AppStyles.styleSemibold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
