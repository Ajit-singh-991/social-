import 'package:social_app/presentation/forgotpasswordsuccess_screen/controller/forgotpasswordsuccess_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgotpasswordsuccessScreen.
///
/// This class ensures that the ForgotpasswordsuccessController is created when the
/// ForgotpasswordsuccessScreen is first loaded.
class ForgotpasswordsuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotpasswordsuccessController());
  }
}
