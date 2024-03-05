import 'package:social_app/presentation/registration_ste5_screen/controller/registration_ste5_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationSte5Screen.
///
/// This class ensures that the RegistrationSte5Controller is created when the
/// RegistrationSte5Screen is first loaded.
class RegistrationSte5Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSte5Controller());
  }
}
