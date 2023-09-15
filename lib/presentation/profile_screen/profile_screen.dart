import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_image.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key})
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
              SizedBox(height: 24.v),
              Text(
                "msg_account_settings".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconuser,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_informacion_personal".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_cambiar_la_informaci_n".tr,
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
                    margin: EdgeInsets.symmetric(vertical: 13.v),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconuser,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_datos_cl_nicos".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_cambiar_la_informaci_n".tr,
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
                    margin: EdgeInsets.symmetric(vertical: 13.v),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgHistoryicon,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_historial_de_llamadas".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_ver_el_historial".tr,
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
                    margin: EdgeInsets.symmetric(vertical: 13.v),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconnotification,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_notifications".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_administrar_notificaciones".tr,
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
                    margin: EdgeInsets.symmetric(vertical: 13.v),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgStar,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_calif_canos".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "msg_califica_nuestra".tr,
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
                      bottom: 14.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 21.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_cerrar_sesi_n".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_cerrar_sesi_n_en".tr,
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
                    margin: EdgeInsets.symmetric(vertical: 13.v),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
