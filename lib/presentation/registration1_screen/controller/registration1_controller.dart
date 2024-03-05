import '../../../core/app_export.dart';import '../models/registration1_model.dart';import 'package:flutter/material.dart';/// A controller class for the Registration1Screen.
///
/// This class manages the state of the Registration1Screen, including the
/// current registration1ModelObj
class Registration1Controller extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

Rx<Registration1Model> registration1ModelObj = Registration1Model().obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); } 
 }
