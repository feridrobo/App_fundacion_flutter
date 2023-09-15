import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_image.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';

class ProfileInformacionPersonalScreen extends StatelessWidget {
  const ProfileInformacionPersonalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 62.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgIconarrow,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 13.v,
              bottom: 10.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle1(
            text: "lbl_tu_perfil".tr,
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse33,
                height: 82.adaptSize,
                width: 82.adaptSize,
                radius: BorderRadius.circular(
                  41.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_jaime_londo_o".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 2.v),
              Text(
                "lbl_57_3200000000".tr,
                style: CustomTextStyles.bodySmallBlack90010,
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_informacion_personal2".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 21.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIcbaselinemail,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_correo".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_logout_of_your_account".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowdownBlack900,
                    height: 15.v,
                    width: 8.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgSolarlogoutlineduotone,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_telefono".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "msg_logout_of_your_account".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowdownBlack900,
                    height: 15.v,
                    width: 8.h,
                    margin: EdgeInsets.only(
                      top: 13.v,
                      bottom: 15.v,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  top: 21.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: 31.v,
                      width: 25.h,
                      margin: EdgeInsets.only(
                        top: 6.v,
                        bottom: 5.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_direccion".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            "msg_add_your_address".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdownBlack900,
                      height: 15.v,
                      width: 8.h,
                      margin: EdgeInsets.only(
                        top: 13.v,
                        bottom: 15.v,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSolarlogoutlineduotonePrimary,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 6.v,
                        bottom: 5.v,
                      ),
                      child: Text(
                        "lbl_documento".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconbirthday,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.h,
                        top: 5.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "msg_fecha_de_nacimiento".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
