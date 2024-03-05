import '../../../core/app_export.dart';import '../models/registration_st4_model.dart';import 'package:flutter/material.dart';/// A controller class for the RegistrationSt4Screen.
///
/// This class manages the state of the RegistrationSt4Screen, including the
/// current registrationSt4ModelObj
class RegistrationSt4Controller extends GetxController {TextEditingController emailController = TextEditingController();

Rx<RegistrationSt4Model> registrationSt4ModelObj = RegistrationSt4Model().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
