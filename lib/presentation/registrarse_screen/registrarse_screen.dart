import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_image_1.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_title.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:fundacion_v1/widgets/custom_drop_down.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';
import 'package:fundacion_v1/widgets/custom_text_form_field.dart';

class RegistrarseScreen extends StatelessWidget {
  RegistrarseScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController documentnumberController = TextEditingController();

  TextEditingController emailoneController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Row(
              children: [
                AppbarTitle(
                  text: "msg_crear_una_cuenta".tr,
                ),
                AppbarImage1(
                  svgPath: ImageConstant.imgUser,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: 427.h,
          padding: EdgeInsets.symmetric(horizontal: 27.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_bienvenido_de_nuevo".tr,
                    style: CustomTextStyles.bodyMediumOutfitGray700,
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              Text(
                "msg_empieza_a_disfrutar".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 11.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdownOnerror,
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 26.v,
                  right: 3.h,
                ),
                hintText: "msg_tarjeta_de_identidad".tr,
                items: dropdownItemList,
                borderDecoration: DropDownStyleHelper.fillGray,
                fillColor: appTheme.gray100,
                onChanged: (value) {},
              ),
              CustomTextFormField(
                controller: documentnumberController,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 10.v,
                ),
                hintText: "msg_numero_de_documento".tr,
              ),
              CustomTextFormField(
                controller: emailoneController,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 10.v,
                ),
                hintText: "lbl_correo".tr,
              ),
              CustomTextFormField(
                controller: phonenumberoneController,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 8.v,
                ),
                hintText: "msg_numero_de_celular".tr,
              ),
              CustomTextFormField(
                controller: passwordoneController,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 8.v,
                ),
                hintText: "lbl_contrase_a".tr,
              ),
              CustomTextFormField(
                controller: confirmpasswordController,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 7.v,
                ),
                hintText: "msg_confirmar_contrase_a".tr,
                textInputAction: TextInputAction.done,
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_registrarse".tr,
                margin: EdgeInsets.only(
                  left: 2.h,
                  right: 3.h,
                ),
              ),
              SizedBox(height: 58.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_iniciar_sersion2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 58.v),
            ],
          ),
        ),
      ),
    );
  }
}
