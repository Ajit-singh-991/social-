import '../../../core/app_export.dart';import '../models/createnewpassword_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatenewpasswordScreen.
///
/// This class manages the state of the CreatenewpasswordScreen, including the
/// current createnewpasswordModelObj
class CreatenewpasswordController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreatenewpasswordModel> createnewpasswordModelObj = CreatenewpasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
