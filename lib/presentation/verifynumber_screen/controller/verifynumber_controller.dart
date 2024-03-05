import '../../../core/app_export.dart';import '../models/verifynumber_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifynumberScreen.
///
/// This class manages the state of the VerifynumberScreen, including the
/// current verifynumberModelObj
class VerifynumberController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifynumberModel> verifynumberModelObj = VerifynumberModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
