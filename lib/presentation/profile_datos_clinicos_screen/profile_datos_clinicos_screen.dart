import '../profile_datos_clinicos_screen/widgets/userbloodtype_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_v1/core/app_export.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_image.dart';
import 'package:fundacion_v1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:fundacion_v1/widgets/app_bar/custom_app_bar.dart';

class ProfileDatosClinicosScreen extends StatelessWidget {
  const ProfileDatosClinicosScreen({Key? key})
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
              SizedBox(height: 19.v),
              Text(
                "lbl_datos_clinicos".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
              SizedBox(height: 22.v),
              Expanded(
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 23.v,
                    );
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return UserbloodtypeItemWidget();
                  },
                ),
              ),
              SizedBox(height: 22.v),
            ],
          ),
        ),
      ),
    );
  }
}
