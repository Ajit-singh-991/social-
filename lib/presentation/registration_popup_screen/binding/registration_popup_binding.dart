import 'package:social_app/presentation/registration_popup_screen/controller/registration_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationPopupScreen.
///
/// This class ensures that the RegistrationPopupController is created when the
/// RegistrationPopupScreen is first loaded.
class RegistrationPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationPopupController());
  }
}
