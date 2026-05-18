import 'package:example/network_coller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class LoginController extends GetxController {
  // Future<void> login() async {
  //   try {
  //     final loginBody = {
  //       "email": emailCtrl.text.trim(),
  //       "password": passCtrl.text.trim(),
  //     };
  //     final url = "https://vowel-frail-delouse.ngrok-free.dev/api/v1/auth/login";
  //     final response = await NetworkCaller().postRequest(url, body: loginBody);

  //     if (!response.isSuccess) {
  //       Get.snackbar(
  //         "Error",
  //         response.responseData['message'] ?? "Invalid credentials",
  //       );
  //       return;
  //     }

  //     Get.snackbar("Success", "Login Successful");
  //   } catch (e) {
  //     if (Get.isDialogOpen ?? false) {
  //       Get.back();
  //     }

  //     Get.snackbar("Error", "Login failed");
  //   }
  // }

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  Future<void> signin() async {
    try {
      final url =
          "https://vowel-frail-delouse.ngrok-free.dev/api/v1/auth/login";

      final response = await NetworkCaller().postRequest(
        url,

        body: {
          "email": emailcontroller.text.trim(),
          "password": passwordcontroller.text.trim(),
        },
      );

      if (!response.isSuccess) {
        Get.snackbar(
          "Error",
          response.responseData['message'] ?? "Invalid credentials",
        );
        return;
      }

      Get.snackbar("Sucess", "Login Successful");
    } catch (e) {
      Get.snackbar("Error", "Login failed");
    } finally {
      Get.snackbar("Error", "Login failed");
    }
  }
}
