import 'package:social_app/widgets/app_bar/custom_app_bar.dart';import 'package:social_app/widgets/app_bar/appbar_leading_image.dart';import 'package:social_app/widgets/app_bar/appbar_subtitle_six.dart';import 'package:social_app/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:social_app/core/app_export.dart';import 'controller/settings_verify_account_payment_method_upi_verified_controller.dart';class SettingsVerifyAccountPaymentMethodUpiVerifiedScreen extends GetWidget<SettingsVerifyAccountPaymentMethodUpiVerifiedController> {const SettingsVerifyAccountPaymentMethodUpiVerifiedScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(height: 768.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgAccent66, height: 252.v, width: 154.h, alignment: Alignment.topRight), _buildCalendar()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftOnerrorcontainer, margin: EdgeInsets.only(left: 16.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleSix(text: "lbl_verify_account".tr)); } 
/// Section Widget
Widget _buildCalendar() { return Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(left: 16.h, top: 71.v, right: 16.h), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v), decoration: AppDecoration.outlineGray300011, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 44.adaptSize, width: 44.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillDeepPurple, child: CustomImageView(imagePath: ImageConstant.imgCalendarDeepPurple300)), Padding(padding: EdgeInsets.only(left: 15.h, top: 5.v, bottom: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Text("lbl_upi_id".tr, style: CustomTextStyles.labelLargeBluegray300Medium), Container(width: 45.h, margin: EdgeInsets.only(left: 2.h), padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v), decoration: AppDecoration.fillGreen400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder1), child: Text("lbl_verified".tr, style: CustomTextStyles.labelMediumGreen400))]), SizedBox(height: 2.v), Text("msg_9xxxxxxxxx_paytm".tr, style: CustomTextStyles.titleSmallGray900)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))])), GestureDetector(onTap: () {onTapCreditCard();}, child: Container(padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v), decoration: AppDecoration.outlineGray300011, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 44.adaptSize, width: 44.adaptSize, padding: EdgeInsets.all(10.h), child: CustomImageView(imagePath: ImageConstant.imgCreditCard)), Padding(padding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 11.v), child: Text("msg_add_bank_account".tr, style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRightGray900, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))])))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the settingsVerifyAccountPaymentMethodAddBankAccouScreen when the action is triggered.
onTapCreditCard() { Get.toNamed(AppRoutes.settingsVerifyAccountPaymentMethodAddBankAccouScreen, ); } 
 }