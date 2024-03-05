import '../../../core/app_export.dart';
import '../models/signin_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the SigninPage.
///
/// This class manages the state of the SigninPage, including the
/// current signinModelObj
class SigninController extends GetxController {
  SigninController(this.signinModelObj);

  TextEditingController phoneNumberController = TextEditingController();

  Rx<SigninModel> signinModelObj;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
