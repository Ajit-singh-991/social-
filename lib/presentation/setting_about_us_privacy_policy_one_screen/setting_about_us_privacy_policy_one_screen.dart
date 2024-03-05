import 'package:social_app/widgets/app_bar/custom_app_bar.dart';import 'package:social_app/widgets/app_bar/appbar_leading_image.dart';import 'package:flutter/material.dart';import 'package:social_app/core/app_export.dart';import 'controller/setting_about_us_privacy_policy_one_controller.dart';class SettingAboutUsPrivacyPolicyOneScreen extends GetWidget<SettingAboutUsPrivacyPolicyOneController> {const SettingAboutUsPrivacyPolicyOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 16.v), _buildIcon(), Expanded(child: SingleChildScrollView(child: Container(height: 1794.v, width: 359.h, margin: EdgeInsets.only(left: 16.h, bottom: 5.v), child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.bottomLeft, child: SizedBox(width: 343.h, child: Text("msg_1_introduction_welcome".tr, maxLines: 75, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumGray900.copyWith(height: 1.57)))), CustomImageView(imagePath: ImageConstant.imgAccent85, height: 252.v, width: 154.h, alignment: Alignment.topRight)]))))])))); } 
/// Section Widget
Widget _buildIcon() { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.fromLTRB(21.h, 5.v, 340.h, 5.v), onTap: () {onTapIcon();})), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_privacy_policy2".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_last_updated_sep".tr, style: theme.textTheme.bodyMedium))]); } 

/// Navigates to the previous screen.
onTapIcon() { Get.back(); } 
 }