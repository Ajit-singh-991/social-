import 'package:social_app/presentation/createnewpassword_screen/controller/createnewpassword_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatenewpasswordScreen.
///
/// This class ensures that the CreatenewpasswordController is created when the
/// CreatenewpasswordScreen is first loaded.
class CreatenewpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatenewpasswordController());
  }
}
