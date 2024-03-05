import 'package:social_app/widgets/custom_icon_button.dart';import 'package:social_app/widgets/app_bar/custom_app_bar.dart';import 'package:social_app/widgets/app_bar/appbar_leading_image.dart';import 'package:social_app/widgets/app_bar/appbar_subtitle_six.dart';import 'package:social_app/widgets/custom_elevated_button.dart';import 'package:social_app/widgets/custom_outlined_button.dart';import 'package:flutter/material.dart';import 'package:social_app/core/app_export.dart';import 'controller/settings_wallet_one_controller.dart';import 'package:social_app/presentation/settings_wallet_top_up_aadhaar_verification_dialog/settings_wallet_top_up_aadhaar_verification_dialog.dart';import 'package:social_app/presentation/settings_wallet_top_up_aadhaar_verification_dialog/controller/settings_wallet_top_up_aadhaar_verification_controller.dart';import 'package:social_app/presentation/settings_wallet_withdraw_pan_verify_dialog/settings_wallet_withdraw_pan_verify_dialog.dart';import 'package:social_app/presentation/settings_wallet_withdraw_pan_verify_dialog/controller/settings_wallet_withdraw_pan_verify_controller.dart';class SettingsWalletOneScreen extends GetWidget<SettingsWalletOneController> {const SettingsWalletOneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(height: 768.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgAccent53, height: 252.v, width: 154.h, alignment: Alignment.topRight), _buildTopUp(), _buildTransactions1()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnerrorcontainer, margin: EdgeInsets.only(left: 16.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleSix(text: "lbl_wallet".tr)); } 
/// Section Widget
Widget _buildTopUp() { return Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(left: 16.h, top: 66.v, right: 16.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 19.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 4.h), child: Text("msg_total_wallet_balance".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgLayer1, height: 28.adaptSize, width: 28.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 7.v)), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("lbl_3_0002".tr, style: theme.textTheme.headlineLarge)), CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 6.h, top: 3.v, bottom: 7.v), onTap: () {onTapImgCheckmark();})])), SizedBox(height: 17.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(height: 46.v, width: 148.h, text: "lbl_top_up".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL10, onPressed: () {onTapTopUp();}), CustomOutlinedButton(width: 147.h, text: "lbl_withdraw".tr, buttonStyle: CustomButtonStyles.outlineGrayTL10, onPressed: () {onTapWithdraw();})])]))); } 
/// Section Widget
Widget _buildTransactions1() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildCreditCard(referralProgram: "lbl_transactions".tr, onTapCreditCard3: () {onTapTransactions();}), Container(padding: EdgeInsets.fromLTRB(15.h, 16.v, 15.h, 15.v), decoration: AppDecoration.outlineGray300011, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 44.adaptSize, width: 44.adaptSize, padding: EdgeInsets.all(10.h), decoration: AppDecoration.fillDeepPurple.copyWith(borderRadius: BorderRadiusStyle.circleBorder23), child: CustomImageView(imagePath: ImageConstant.imgCalendarDeepPurple300, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 11.v), child: Text("msg_kyc_verification".tr, style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))])), _buildCreditCard(referralProgram: "msg_referral_program".tr, onTapCreditCard3: () {onTapCreditCard();})])), _buildCreditCard(referralProgram: "lbl_need_help".tr)]))); } 
/// Common widget
Widget _buildCreditCard({required String referralProgram, Function? onTapCreditCard3, }) { return GestureDetector(onTap: () {onTapCreditCard3!.call();}, child: Container(padding: EdgeInsets.fromLTRB(15.h, 16.v, 15.h, 15.v), decoration: AppDecoration.outlineGray300011, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 44.adaptSize, width: 44.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgCreditCard)), Padding(padding: EdgeInsets.only(left: 15.h, top: 13.v, bottom: 10.v), child: Text(referralProgram, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the settingsWalletTwoScreen when the action is triggered.
onTapImgCheckmark() { Get.toNamed(AppRoutes.settingsWalletTwoScreen, ); } 

/// Displays a dialog with the [SettingsWalletTopUpAadhaarVerificationDialog] content.
onTapTopUp() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:SettingsWalletTopUpAadhaarVerificationDialog(Get.put(SettingsWalletTopUpAadhaarVerificationController(),),),)); } 

/// Displays a dialog with the [SettingsWalletWithdrawPanVerifyDialog] content.
onTapWithdraw() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:SettingsWalletWithdrawPanVerifyDialog(Get.put(SettingsWalletWithdrawPanVerifyController(),),),)); } 
/// Navigates to the settingsWalletWithdrawActiveScreen when the action is triggered.
onTapTransactions() { Get.toNamed(AppRoutes.settingsWalletWithdrawActiveScreen, ); } 
/// Navigates to the settingsNotificationsScreen when the action is triggered.
onTapCreditCard() { Get.toNamed(AppRoutes.settingsNotificationsScreen, ); } 
 }
