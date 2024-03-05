import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'widgets/onboarding_item_widget.dart';
import 'models/onboarding_item_model.dart';
import 'package:social_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/app_export.dart';
import 'controller/onboarding_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 496.v,
                  width: 343.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 130.v,
                          width: 109.h,
                          margin: EdgeInsets.only(bottom: 22.v),
                          decoration: BoxDecoration(
                            color: appTheme.gray100,
                            borderRadius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 496.v,
                          width: 343.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle103,
                                height: 174.v,
                                width: 109.h,
                                radius: BorderRadius.circular(
                                  15.h,
                                ),
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 88.v),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 174.v,
                                  width: 109.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray100,
                                    borderRadius: BorderRadius.circular(
                                      15.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle106,
                                height: 174.v,
                                width: 109.h,
                                radius: BorderRadius.circular(
                                  15.h,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                              _buildRectangle(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 131.h,
                    vertical: 207.v,
                  ),
                  decoration: AppDecoration
                      .gradientOnPrimaryContainerToOnPrimaryContainer,
                  child: Text(
                    "msg_sign_up_or_log_in".tr,
                    style: CustomTextStyles.bodyLargeGray900,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAccent,
                height: 252.v,
                width: 154.h,
                alignment: Alignment.topRight,
              ),
              Opacity(
                opacity: 0.2,
                child: CustomImageView(
                  imagePath: ImageConstant.imgAccent178x102,
                  height: 178.v,
                  width: 102.h,
                  alignment: Alignment.topLeft,
                ),
              ),
              Opacity(
                opacity: 0.4,
                child: CustomImageView(
                  imagePath: ImageConstant.imgAccent271x144,
                  height: 271.v,
                  width: 144.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 52.v),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 334.h,
                  margin: EdgeInsets.only(bottom: 51.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_by_clicking_the2".tr,
                          style: CustomTextStyles.bodyMediumff95a4b7,
                        ),
                        TextSpan(
                          text: "msg_terms_of_service".tr,
                          style: CustomTextStyles.titleSmallff171717,
                        ),
                        TextSpan(
                          text: "msg_and_acknowledged".tr,
                          style: CustomTextStyles.bodyMediumff95a4b7,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: CustomTextStyles.titleSmallff171717,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              _buildLoginOption(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 182.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 314.v,
              width: 226.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => StaggeredGridView.countBuilder(
                      shrinkWrap: true,
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 226.h,
                      mainAxisSpacing: 226.h,
                      staggeredTileBuilder: (index) {
                        return StaggeredTile.fit(2);
                      },
                      itemCount: controller.onboardingModelObj.value
                          .onboardingItemList.value.length,
                      itemBuilder: (context, index) {
                        OnboardingItemModel model = controller
                            .onboardingModelObj
                            .value
                            .onboardingItemList
                            .value[index];
                        return OnboardingItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle109,
                    height: 23.v,
                    width: 109.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 160.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle105,
                    height: 16.v,
                    width: 109.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle104,
                    height: 130.v,
                    width: 109.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithPhoneemail() {
    return CustomOutlinedButton(
      height: 52.v,
      text: "msg_continue_with_phone_email".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSmartphone,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleSmallGray900,
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogle() {
    return CustomOutlinedButton(
      height: 52.v,
      text: "msg_continue_with_google".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleSmallGray900,
    );
  }

  /// Section Widget
  Widget _buildContinueWithFacebook() {
    return CustomOutlinedButton(
      height: 52.v,
      text: "msg_continue_with_facebook".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleSmallGray900,
    );
  }

  /// Section Widget
  Widget _buildContinueWithApple() {
    return CustomOutlinedButton(
      height: 52.v,
      text: "msg_continue_with_apple".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSocialIcon,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleSmallGray900,
    );
  }

  /// Section Widget
  Widget _buildLoginOption() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 16.h,
          bottom: 155.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildContinueWithPhoneemail(),
            SizedBox(height: 15.v),
            _buildContinueWithGoogle(),
            SizedBox(height: 15.v),
            _buildContinueWithFacebook(),
            SizedBox(height: 15.v),
            _buildContinueWithApple(),
          ],
        ),
      ),
    );
  }
}
