import 'package:social_app/widgets/custom_text_form_field.dart';import 'package:social_app/widgets/app_bar/custom_app_bar.dart';import 'package:social_app/widgets/app_bar/appbar_title_image.dart';import 'package:social_app/widgets/app_bar/appbar_subtitle_six.dart';import 'package:social_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:social_app/core/app_export.dart';import 'controller/registration1_controller.dart';class Registration1Screen extends GetWidget<Registration1Controller> {const Registration1Screen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [_buildFirstName(), SizedBox(height: 357.v, width: double.maxFinite), Spacer()])), bottomNavigationBar: _buildContinue())); } 
/// Section Widget
Widget _buildInputField() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_first_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: controller.firstNameController, hintText: "lbl_naveen".tr)]); } 
/// Section Widget
Widget _buildInputField1() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_last_name".tr, style: theme.textTheme.titleSmall), SizedBox(height: 6.v), CustomTextFormField(controller: controller.lastNameController, hintText: "lbl_verma".tr, textInputAction: TextInputAction.done)]); } 
/// Section Widget
Widget _buildFirstName() { return SizedBox(height: 357.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgAccent6, height: 252.v, width: 154.h, alignment: Alignment.topRight), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 16.h, top: 91.v), child: Text("msg_tell_us_about_yourself".tr, style: theme.textTheme.headlineSmall))), Align(alignment: Alignment.topCenter, child: Container(width: 341.h, margin: EdgeInsets.only(top: 127.v), child: Text("msg_please_enter_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildInputField(), SizedBox(height: 14.v), _buildInputField1()]))), CustomAppBar(height: 59.v, centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 151.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftOnerrorcontainer, onTap: () {onTapArrowLeft();}), AppbarSubtitleSix(text: "lbl_step_1_of_8".tr, margin: EdgeInsets.only(left: 111.h, top: 3.v))])), SizedBox(height: 16.v), SizedBox(height: 3.v, width: double.maxFinite, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Divider(color: appTheme.gray10001))), Align(alignment: Alignment.centerLeft, child: Container(height: 3.v, width: 46.h, margin: EdgeInsets.only(right: 329.h), decoration: BoxDecoration(color: appTheme.green400)))]))]), styleType: Style.bgFill)])); } 
/// Section Widget
Widget _buildContinue() { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 54.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
