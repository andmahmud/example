import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final pickedImage = Rxn<File>();
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage({ImageSource source = ImageSource.gallery}) async {
    try {
      final XFile? picked = await _picker.pickImage(
        source: source,
        imageQuality: 85,
        maxWidth: 800,
      );
      if (picked != null) pickedImage.value = File(picked.path);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Could not pick image. Please try again.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
