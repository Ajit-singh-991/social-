import 'package:social_app/presentation/registration_step2_screen/controller/registration_step2_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationStep2Screen.
///
/// This class ensures that the RegistrationStep2Controller is created when the
/// RegistrationStep2Screen is first loaded.
class RegistrationStep2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationStep2Controller());
  }
}
