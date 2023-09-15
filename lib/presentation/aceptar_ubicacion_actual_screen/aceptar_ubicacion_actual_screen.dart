import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';

class AceptarUbicacionActualScreen extends StatelessWidget {
  const AceptarUbicacionActualScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 427.h,
          padding: EdgeInsets.only(
            left: 29.h,
            top: 75.v,
            right: 29.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgIconarrow,
                height: 32.adaptSize,
                width: 32.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 56.v),
              CustomImageView(
                svgPath: ImageConstant.imgIconubicacion,
                height: 317.adaptSize,
                width: 317.adaptSize,
              ),
              Container(
                width: 301.h,
                margin: EdgeInsets.only(
                  left: 33.h,
                  top: 75.v,
                  right: 33.h,
                ),
                child: Text(
                  "msg_emergencia_psicol_gica".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallOnPrimaryContainer,
                ),
              ),
              Container(
                width: 263.h,
                margin: EdgeInsets.only(
                  left: 52.h,
                  top: 12.v,
                  right: 52.h,
                ),
                child: Text(
                  "msg_conozca_a_su_psicologo".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 69.v),
              GestureDetector(
                onTap: () {
                  // Navegar a la pantalla deseada cuando se hace clic en "Comencemos"
                  Navigator.pushNamed(context, '/registrarse_screen');
                },
                child: CustomElevatedButton(
                  width: 216.h,
                  text: "lbl_comencemos".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillPrimary,
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
