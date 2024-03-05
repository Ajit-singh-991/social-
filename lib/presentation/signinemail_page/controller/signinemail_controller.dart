import '../../../core/app_export.dart';
import '../models/signinemail_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SigninemailPage.
///
/// This class manages the state of the SigninemailPage, including the
/// current signinemailModelObj
class SigninemailController extends GetxController {
  SigninemailController(this.signinemailModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SigninemailModel> signinemailModelObj;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
