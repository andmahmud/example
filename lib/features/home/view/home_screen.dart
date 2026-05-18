import 'package:example/button.dart';
import 'package:example/custom_text.dart';
import 'package:example/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "BottomSheet",
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        padding: EdgeInsets.all(80),
                        width: double.infinity,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),

                        child: Column(
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            CustomText(
                              text: "Are Your sure?",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomButton(
                                    color: Colors.red,

                                    text: "Close",
                                    onTap: () => Get.back(),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: CustomButton(
                                    text: "OK",
                                    onTap: () => Get.back(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(height: 20),

                CustomButton(
                  text: "Custom Dialog",
                  onTap: () {
                    // Get.dialog(
                    //   AlertDialog(
                    //     title: Text("Custom Dialog"),

                    //     actions: [
                    //       CustomButton(text: "Close", onTap: () => Get.back()),
                    //       SizedBox(height: 10),
                    //       CustomButton(text: "OK", onTap: () => Get.back()),
                    //     ],
                    //   ),
                    // );

                    Get.dialog(
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Material(
                                color: Colors.transparent,

                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      "assets/logo.png",
                                      height: 200,
                                      width: 200,
                                    ),

                                    SizedBox(height: 20),

                                    CustomText(
                                      text: "Biology Quiz",
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomButton(
                                            color: Colors.red,

                                            text: "Close",
                                            onTap: () => Get.back(),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: CustomButton(
                                            text: "OK",
                                            onTap: () => Get.back(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),

                SizedBox(height: 20),

                CustomButton(
                  text: "Logout",
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
