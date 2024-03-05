import 'package:social_app/presentation/registration_done_screen/controller/registration_done_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationDoneScreen.
///
/// This class ensures that the RegistrationDoneController is created when the
/// RegistrationDoneScreen is first loaded.
class RegistrationDoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationDoneController());
  }
}
