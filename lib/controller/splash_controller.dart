import 'package:get/get.dart';
import 'package:royal_property/ui/views/onboarding_screen.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.offAllNamed(onboarding),
    );

    super.onReady();
  }
}
