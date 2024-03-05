import '../../../core/app_export.dart';import '../models/registration_stp7_model.dart';import 'package:flutter/material.dart';/// A controller class for the RegistrationStp7Screen.
///
/// This class manages the state of the RegistrationStp7Screen, including the
/// current registrationStp7ModelObj
class RegistrationStp7Controller extends GetxController {TextEditingController searchController = TextEditingController();

Rx<RegistrationStp7Model> registrationStp7ModelObj = RegistrationStp7Model().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
