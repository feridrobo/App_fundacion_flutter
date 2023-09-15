import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_image_1.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_title.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:fundacion_v1/widgets/custom_drop_down.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';
import 'package:fundacion_v1/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Tarjeta de Identidad",
    "Cédula de Ciudadanía",
    "Pasaporte",
    "Cédula de Extranjería",
  ];

  TextEditingController documentnumberController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 29.h),
            child: Row(
              children: [
                AppbarTitle(
                  text: "lbl_iniciar_sesion".tr,
                ),
                AppbarImage1(
                  svgPath: ImageConstant.imgUser,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: 427.h,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_bienvenido_de_nuevo".tr,
                style: CustomTextStyles.bodyMediumOutfitGray700,
              ),
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgImglogo,
                height: 271.v,
                width: 215.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 18.v),
              Text(
                "lbl_bienvenido".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 27.v),
              CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 11.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdown,
                  ),
                ),
                hintText: "msg_tarjeta_de_identidad".tr,
                items: dropdownItemList,
                onChanged: (value) {},
              ),
              SizedBox(height: 10.v),
              CustomTextFormField(
                controller: documentnumberController,
                hintText: "msg_numero_de_documento".tr,
                borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                fillColor: theme.colorScheme.onPrimary,
              ),
              SizedBox(height: 10.v),
              CustomTextFormField(
                controller: passwordoneController,
                hintText: "lbl_contrase_a".tr,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.fillOnPrimary,
                fillColor: theme.colorScheme.onPrimary,
              ),
              SizedBox(height: 66.v),
              CustomElevatedButton(
                text: "lbl_ingresar".tr,
              ),
              GestureDetector(
                onTap: () {
                  // Navegar a la pantalla deseada cuando se hace clic en "lbl_reg_strate_ya"
                  Navigator.pushNamed(context, '/registrarse_screen');
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 47.h,
                    top: 54.v,
                    bottom: 5.v,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_no_tienes_cuenta2".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        TextSpan(
                          text: "lbl_reg_strate_ya".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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
