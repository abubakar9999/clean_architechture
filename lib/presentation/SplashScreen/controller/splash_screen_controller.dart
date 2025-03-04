import 'package:dynamic_architechture/presentation/HomeScreen/home_screen.dart';
import 'package:dynamic_architechture/presentation/LoginScreen/login_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final int _splashDuration = 2;
  @override
  void onInit() {
    _isLogin();
    super.onInit();
  }

  Future _isLogin() async {
    bool isLoging = true;
    //initailiy isLogin will be false!
    //check login credential from local Db!
    //if get credential data then isloging value will be true
    await Future.delayed(
      Duration(seconds: _splashDuration),
      () => isLoging == true
          ? Get.offAll( const LoginScreen())
          : Get.offAll(const HomeScreen()),
    );
  }
}
