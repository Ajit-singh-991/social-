import 'package:social_app/widgets/custom_text_form_field.dart';import 'package:social_app/widgets/app_bar/custom_app_bar.dart';import 'package:social_app/widgets/app_bar/appbar_leading_image.dart';import 'package:social_app/widgets/app_bar/appbar_subtitle_six.dart';import 'package:social_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:social_app/core/app_export.dart';import 'controller/settings_security_privacy_call_controls_set_availab_one_controller.dart';class SettingsSecurityPrivacyCallControlsSetAvailabOneScreen extends GetWidget<SettingsSecurityPrivacyCallControlsSetAvailabOneController> {const SettingsSecurityPrivacyCallControlsSetAvailabOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildTime(), _buildSettingsSecurity()])), bottomNavigationBar: _buildSave())); } 
/// Section Widget
Widget _buildInputField() { return Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(right: 16.h, bottom: 90.v), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_start_time".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: controller.timeController, hintText: "lbl_select_time".tr, hintStyle: CustomTextStyles.titleMediumBluegray300, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgClockErrorcontainer, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 52.v), contentPadding: EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v))]))); } 
/// Section Widget
Widget _buildInputField1() { return Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_end_time".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: controller.timeController1, hintText: "lbl_select_time".tr, hintStyle: CustomTextStyles.titleMediumBluegray300, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 15.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgClockErrorcontainer, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 52.v), contentPadding: EdgeInsets.only(left: 15.h, top: 16.v, bottom: 16.v))]))); } 
/// Section Widget
Widget _buildTime() { return SizedBox(height: 270.v, width: 359.h, child: Stack(alignment: Alignment.bottomLeft, children: [CustomImageView(imagePath: ImageConstant.imgAccent79, height: 252.v, width: 154.h, alignment: Alignment.topRight), _buildInputField(), _buildInputField1(), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(top: 16.v, right: 158.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnerrorcontainer, margin: EdgeInsets.only(left: 16.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleSix(text: "lbl_add_slot".tr)), SizedBox(height: 30.v), Text("lbl_time_duration".tr, style: CustomTextStyles.titleMediumBold_1)])))])); } 
/// Section Widget
Widget _buildSettingsSecurity() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_weekly_repeat".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 22.v), Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_s".tr, style: theme.textTheme.titleMedium)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_m".tr, style: CustomTextStyles.titleMediumBluegray300)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_t".tr, style: CustomTextStyles.titleMediumBluegray300)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_w".tr, style: CustomTextStyles.titleMediumBluegray300)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_t".tr, style: CustomTextStyles.titleMediumBluegray300)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_f".tr, style: CustomTextStyles.titleMediumBluegray300)), Container(width: 42.adaptSize, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: Text("lbl_s".tr, style: CustomTextStyles.titleMediumBluegray300))])), SizedBox(height: 5.v)])); } 
/// Section Widget
Widget _buildSave() { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 54.v), onPressed: () {onTapSave();}); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the settingsSecurityPrivacyCallControlsScreen when the action is triggered.
onTapSave() { Get.toNamed(AppRoutes.settingsSecurityPrivacyCallControlsScreen, ); } 
 }