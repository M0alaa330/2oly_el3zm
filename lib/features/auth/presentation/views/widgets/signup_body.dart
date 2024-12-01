import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_textfield.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Scaffold(
      backgroundColor: Appcolors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "البريد الالكتروني",
            style: Styles.textsty16.copyWith(color: Textcolor.black),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextfield(
            controller: email,
            ispassword: false,
            hint: 'ادخل بريدك الالكتروني',
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "كلمة المرور",
            style: Styles.textsty16.copyWith(color: Textcolor.black),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextfield(
              controller: pass, ispassword: true, hint: 'ادخل كلمة المرور'),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: InkWell(
              onTap: () => GoRouter.of(context).push(AppRouter.kforgetpass),
              child: Text(
                "نسيت كلمة المرور؟",
                style: Styles.textsty14.copyWith(color: Textcolor.brown850),
              ),
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          InkWell(
            onTap: () => GoRouter.of(context).push(AppRouter.khome),
            child: const CustomButton(
              text: "تسجيل الدخول",
            ),
          )
        ],
      ),
    );
  }
}
