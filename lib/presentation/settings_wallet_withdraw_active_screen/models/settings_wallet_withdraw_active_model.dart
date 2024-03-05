import '../../../core/app_export.dart';import 'accent_item_model.dart';import 'arrowleft_item_model.dart';/// This class defines the variables used in the [settings_wallet_withdraw_active_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsWalletWithdrawActiveModel {Rx<List<AccentItemModel>> accentItemList = Rx([AccentItemModel(accent:ImageConstant.imgAccent60.obs)]);

Rx<List<ArrowleftItemModel>> arrowleftItemList = Rx([ArrowleftItemModel(arrowLeft:ImageConstant.imgArrowLeftPrimarycontainer.obs,transfer: "Transfer".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgArrowDownGreen400.obs,transfer: "Receive".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgUser.obs,transfer: "Top up".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgArrowLeftPrimarycontainer.obs,transfer: "Transfer".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgArrowDownGreen400.obs,transfer: "Receive".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgUser.obs,transfer: "Top up".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs),ArrowleftItemModel(arrowLeft:ImageConstant.imgArrowLeftPrimarycontainer.obs,transfer: "Transfer".obs,duration: "Today, 06:07 PM".obs,success: "Success".obs)]);

 }