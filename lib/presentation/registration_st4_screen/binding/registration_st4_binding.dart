import 'package:social_app/presentation/registration_st4_screen/controller/registration_st4_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationSt4Screen.
///
/// This class ensures that the RegistrationSt4Controller is created when the
/// RegistrationSt4Screen is first loaded.
class RegistrationSt4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSt4Controller());
  }
}
