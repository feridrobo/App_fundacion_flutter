import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_subtitle.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';
import 'package:fundacion_v1/widgets/custom_icon_button.dart';

class ReviewDoctorScreen extends StatelessWidget {
  const ReviewDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 85.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 45.h, top: 8.v, bottom: 8.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_mi_cita".tr),
                actions: [
                  Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin:
                          EdgeInsets.symmetric(horizontal: 56.h, vertical: 8.v),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(8.h),
                          border: Border.all(
                              color: theme.colorScheme.onPrimary, width: 1.h)))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage4,
                          height: 198.v,
                          width: 327.h,
                          radius:
                              BorderRadius.vertical(top: Radius.circular(8.h))),
                      Container(
                          margin: EdgeInsets.only(right: 11.h),
                          padding: EdgeInsets.all(12.h),
                          decoration: AppDecoration.outlineBlack,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_dr_nikool".tr,
                                              style: CustomTextStyles
                                                  .titleMediumInterOnErrorContainerSemiBold),
                                          SizedBox(height: 7.v),
                                          Text("msg_areas_de_enfoque".tr,
                                              style: theme.textTheme.labelLarge)
                                        ])),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEstrella,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.only(bottom: 28.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.h, right: 3.h, bottom: 29.v),
                                    child: Text("lbl_5_0".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v, right: 4.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 20.v),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          padding: EdgeInsets.all(8.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgTwitter)),
                                      SizedBox(height: 11.v),
                                      Text("lbl_658".tr,
                                          style: CustomTextStyles
                                              .titleMediumInterOnErrorContainer_1),
                                      SizedBox(height: 5.v),
                                      Text("lbl_pacientes".tr,
                                          style: theme.textTheme.labelLarge)
                                    ])),
                                Column(children: [
                                  CustomIconButton(
                                      height: 40.adaptSize,
                                      width: 40.adaptSize,
                                      padding: EdgeInsets.all(8.h),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark)),
                                  SizedBox(height: 10.v),
                                  Text("lbl_11".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterOnErrorContainer_1),
                                  SizedBox(height: 6.v),
                                  SizedBox(
                                      width: 67.h,
                                      child: Text("msg_a_os_de_experiencia".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelLarge!
                                              .copyWith(height: 1.50)))
                                ]),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 15.v, bottom: 35.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_doctora".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumInterOnErrorContainer),
                                                TextSpan(
                                                    text: "lbl_gmail_com".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumInterOnErrorContainer)
                                              ]),
                                              textAlign: TextAlign.left),
                                          SizedBox(height: 27.v),
                                          Text("msg_14_30_15_00_pm".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumInterOnErrorContainerRegular)
                                        ]))
                              ])),
                      SizedBox(height: 9.v),
                      Text("lbl_sobre_m".tr,
                          style: CustomTextStyles
                              .titleMediumInterOnErrorContainerSemiBold),
                      Container(
                          width: 323.h,
                          margin: EdgeInsets.only(top: 10.v, right: 14.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_hola_soy_nikool2".tr,
                                    style: theme.textTheme.labelLarge),
                                TextSpan(
                                    text: "lbl_read_more".tr,
                                    style:
                                        CustomTextStyles.labelLargeIndigoA400)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(),
                      CustomElevatedButton(
                          text: "msg_start_voice_call".tr,
                          margin: EdgeInsets.only(right: 11.h, bottom: 12.v),
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 30.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCall)))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
