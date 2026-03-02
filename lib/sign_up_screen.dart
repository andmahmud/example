import 'package:example/button.dart';
import 'package:example/colors.dart';
import 'package:example/custom_text.dart';
import 'package:example/input.dart';
import 'package:example/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              CustomText(
                text: "Create Your Account",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10),
              CustomText(
                text: "Sign up to your account",
                fontSize: 16,
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 40),
              CustomInputField(
                hintText: "Name",
                fillColor: Color(0xffFFFFFF),
                borderRadius: 100,
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              CustomInputField(
                hintText: "Confirm Password",
                fillColor: Color(0xffFFFFFF),
                borderRadius: 100,
                prefixIcon: Icons.lock,
                suffixWidget: Icon(Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 30),

              CustomButton(
                text: "Sign UP",
                onTap: () {},
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
                      const TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Login',
                        style: GoogleFonts.inter(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginScreen());
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
