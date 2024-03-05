import 'package:social_app/presentation/registration_s3_screen/controller/registration_s3_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationS3Screen.
///
/// This class ensures that the RegistrationS3Controller is created when the
/// RegistrationS3Screen is first loaded.
class RegistrationS3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationS3Controller());
  }
}
