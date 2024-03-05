import 'package:social_app/presentation/registration1_screen/controller/registration1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Registration1Screen.
///
/// This class ensures that the Registration1Controller is created when the
/// Registration1Screen is first loaded.
class Registration1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Registration1Controller());
  }
}
