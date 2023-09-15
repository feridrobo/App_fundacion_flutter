import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/custom_elevated_button.dart';
import 'package:fundacion_v1/widgets/custom_rating_bar.dart';
import 'package:fundacion_v1/widgets/custom_text_form_field.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController optionalopinionController = TextEditingController();

  TextEditingController optionalopinionController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 30.h,
            top: 70.v,
            right: 30.h,
          ),
          child: Column(
            children: [
              Text(
                "msg_c_mo_estuvo_tu".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 24.v),
              CustomImageView(
                imagePath: ImageConstant.imgImgmedico,
                height: 75.adaptSize,
                width: 75.adaptSize,
                radius: BorderRadius.circular(
                  37.h,
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_manuel_hernandez".tr,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "msg_atencion_recibida".tr,
                style: CustomTextStyles.bodySmallBlack900_1,
              ),
              SizedBox(height: 14.v),
              CustomRatingBar(
                initialRating: 0,
              ),
              SizedBox(height: 15.v),
              CustomTextFormField(
                controller: optionalopinionController,
                hintText: "msg_d_janos_tu_opini_n".tr,
                maxLines: 7,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 20.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
              ),
              SizedBox(height: 12.v),
              Text(
                "msg_servicio_de_la_aplicacion".tr,
                style: theme.textTheme.titleMedium,
              ),
              Text(
                "msg_funcionamiento_de".tr,
                style: CustomTextStyles.bodySmallBlack900_1,
              ),
              SizedBox(height: 14.v),
              CustomRatingBar(
                initialRating: 0,
              ),
              SizedBox(height: 15.v),
              CustomTextFormField(
                controller: optionalopinionController1,
                hintText: "msg_d_janos_tu_opini_n".tr,
                textInputAction: TextInputAction.done,
                maxLines: 7,
                contentPadding: EdgeInsets.all(20.h),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_calificar".tr,
          margin: EdgeInsets.only(
            left: 30.h,
            right: 30.h,
            bottom: 54.v,
          ),
          buttonStyle: CustomButtonStyles.outlineBlack,
        ),
      ),
    );
  }
}
