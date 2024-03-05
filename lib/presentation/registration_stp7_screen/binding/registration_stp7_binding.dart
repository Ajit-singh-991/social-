import 'package:social_app/presentation/registration_stp7_screen/controller/registration_stp7_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationStp7Screen.
///
/// This class ensures that the RegistrationStp7Controller is created when the
/// RegistrationStp7Screen is first loaded.
class RegistrationStp7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationStp7Controller());
  }
}
