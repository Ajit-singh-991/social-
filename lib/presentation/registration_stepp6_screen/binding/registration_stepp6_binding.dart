import 'package:social_app/presentation/registration_stepp6_screen/controller/registration_stepp6_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationStepp6Screen.
///
/// This class ensures that the RegistrationStepp6Controller is created when the
/// RegistrationStepp6Screen is first loaded.
class RegistrationStepp6Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationStepp6Controller());
  }
}
