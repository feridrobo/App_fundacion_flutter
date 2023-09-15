import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';

class EsperaScreen extends StatelessWidget {
  const EsperaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA400,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDoctorimg,
                height: 458.v,
                width: 295.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 116.v),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 45.h,
                    vertical: 31.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 301.h,
                        margin: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Text(
                          "msg_espera_un_momento".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .titleLargeInterOnErrorContainer
                              .copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                      Container(
                        width: 266.h,
                        margin: EdgeInsets.only(
                          left: 35.h,
                          top: 8.v,
                          right: 35.h,
                        ),
                        child: Text(
                          "msg_respira_profundo".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallInterBluegray400
                              .copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        text: "lbl_cancelar".tr,
                        margin: EdgeInsets.only(
                          top: 82.v,
                          right: 11.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
