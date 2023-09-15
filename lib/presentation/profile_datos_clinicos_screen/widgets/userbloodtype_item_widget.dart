import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';

// ignore: must_be_immutable
class UserbloodtypeItemWidget extends StatelessWidget {
  const UserbloodtypeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgIconamoonprofilethin,
          height: 36.adaptSize,
          width: 36.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_tipo_de_sangre".tr,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "lbl_o".tr,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
