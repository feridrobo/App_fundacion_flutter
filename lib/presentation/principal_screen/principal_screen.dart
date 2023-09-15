import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/custom_drop_down.dart';

class PrincipalScreen extends StatelessWidget {
  PrincipalScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 48.h,
            top: 69.v,
            right: 48.h,
          ),
          child: Column(
            children: [
              CustomDropDown(
                width: 144.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdownBlack900,
                  ),
                ),
                hintText: "msg_su_ubicaci_n_actual".tr,
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 11.v),
              Text(
                "msg_medellin_norte".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 9.h,
                  top: 24.v,
                  right: 7.h,
                ),
                child: Text(
                  "msg_deseas_comunicarte".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              Container(
                width: 281.h,
                margin: EdgeInsets.only(
                  left: 26.h,
                  top: 1.v,
                  right: 24.h,
                ),
                child: Text(
                  "msg_al_presionar_el".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallBlack900_1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 58.v,
                  right: 17.h,
                ),
                padding: EdgeInsets.all(39.h),
                decoration: AppDecoration.fillOnError.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder149,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 45.h,
                    vertical: 39.v,
                  ),
                  decoration: AppDecoration.fillOnError1.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder110,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 13.v),
                      CustomImageView(
                        svgPath: ImageConstant.imgClock,
                        height: 73.v,
                        width: 95.h,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "lbl_conecta".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 60.v,
                  bottom: 5.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 46.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_tu_direcci_n_actual".tr,
                      style: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_av_6_7n_05_san_martin".tr,
                      style: CustomTextStyles.titleLargeBlack900,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
