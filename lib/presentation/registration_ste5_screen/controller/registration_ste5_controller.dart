import '../../../core/app_export.dart';import '../models/registration_ste5_model.dart';import 'package:flutter/material.dart';/// A controller class for the RegistrationSte5Screen.
///
/// This class manages the state of the RegistrationSte5Screen, including the
/// current registrationSte5ModelObj
class RegistrationSte5Controller extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<RegistrationSte5Model> registrationSte5ModelObj = RegistrationSte5Model().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
