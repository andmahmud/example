import 'package:example/button.dart';
import 'package:example/colors.dart';
import 'package:example/custom_text.dart';
import 'package:example/features/navbar/view/navbar_screen.dart';
import 'package:example/input.dart';
import 'package:example/login_controller.dart';
import 'package:example/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              CustomText(
                text: "Hey! Welcome back",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10),
              CustomText(
                text: "Sign In to your account",
                fontSize: 16,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 40),

              CustomInputField(
                hintText: "Email",
                fillColor: Color(0xffFFFFFF),
                borderRadius: 100,
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
              CustomInputField(
                hintText: "Password",
                fillColor: Color(0xffFFFFFF),
                borderRadius: 100,
                prefixIcon: Icons.lock,
                suffixWidget: Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    text: "Forgot Password?",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 30),

              CustomButton(
                text: "Sign In",
                onTap: () {
                  Get.offAll(() => NavBar());

                  // Get.bottomSheet(
                  //   Container(
                  //     width: double.infinity,
                  //     padding: EdgeInsets.all(20),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.vertical(
                  //         top: Radius.circular(20),
                  //       ),
                  //     ),
                  //     child: Column(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         Text("This is Bottom Sheet"),
                  //         SizedBox(height: 10),
                  //         ElevatedButton(
                  //           onPressed: () => Get.back(),
                  //           child: Text("Close"),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );

                  // Get.dialog(
                  //   AlertDialog(

                  //     title: Text("Custom Dialog"),
                  //     content: Text("This is custom popup"),
                  //     actions: [
                  //       TextButton(
                  //         onPressed: () => Get.back(),
                  //         child: Text("Close"),
                  //       ),
                  //     ],
                  //   ),
                  // );\\

                  // Get.dialog(
                  //   Center(
                  //     child: Container(
                  //       margin: EdgeInsets.symmetric(horizontal: 20),
                  //       padding: EdgeInsets.all(20),
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       child: Material(
                  //         // IMPORTANT (text ripple fix)
                  //         color: Colors.transparent,
                  //         child: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: [
                  //             // 🔴 Icon
                  //             Container(
                  //               padding: EdgeInsets.all(12),
                  //               decoration: BoxDecoration(
                  //                 color: Colors.red.withOpacity(0.1),
                  //                 shape: BoxShape.circle,
                  //               ),
                  //               child: Icon(
                  //                 Icons.warning_rounded,
                  //                 color: Colors.red,
                  //                 size: 30,
                  //               ),
                  //             ),

                  //             SizedBox(height: 15),

                  //             // 📝 Title
                  //             Text(
                  //               "Custom Dialog",
                  //               style: TextStyle(
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //             ),

                  //             SizedBox(height: 10),

                  //             // 📄 Content
                  //             Text(
                  //               "This is custom popup with container design.",
                  //               textAlign: TextAlign.center,
                  //               style: TextStyle(color: Colors.grey),
                  //             ),

                  //             SizedBox(height: 20),

                  //             // 🔘 Buttons
                  //             Row(
                  //               children: [
                  //                 Expanded(
                  //                   child: OutlinedButton(
                  //                     onPressed: () => Get.back(),
                  //                     child: Text("Cancel"),
                  //                   ),
                  //                 ),
                  //                 SizedBox(width: 10),
                  //                 Expanded(
                  //                   child: ElevatedButton(
                  //                     onPressed: () {
                  //                       Get.back();
                  //                     },
                  //                     child: Text("OK"),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // );
                },
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              SizedBox(height: 50),
              const Row(
                spacing: 10,
                children: [
                  Expanded(child: Divider(color: Color(0xFFDDDDDD))),
                  SizedBox(width: 6),
                  CustomText(
                    text: 'Or sign in with',
                    fontSize: 16,
                    color: AppColors.textPrimary,
                  ),
                  SizedBox(width: 7),
                  Expanded(child: Divider(color: Color(0xFFDDDDDD))),
                ],
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xFFDDDDDD)),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/google.png"),
                    const SizedBox(width: 10),
                    CustomText(
                      text: "Continue with Google",
                      fontSize: 16,
                      color: AppColors.textPrimary,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 16,
                    ),
                    children: [
                      const TextSpan(text: 'Don’t have an account? '),
                      TextSpan(
                        text: 'Register',
                        style: GoogleFonts.inter(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(SignUpScreen());
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
