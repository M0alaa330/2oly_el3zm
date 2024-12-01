import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_textfield.dart';

class ForgetpassBody extends StatelessWidget {
  const ForgetpassBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailconfirm = TextEditingController();

    return Scaffold(
      backgroundColor: Appcolors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 68),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Appcolors.brown850,
                ),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 210),
            child: Text(
              "نسيت كلمة المرور؟",
              style: Styles.textsty24.copyWith(
                  fontWeight: FontWeight.w500, color: Textcolor.brown850),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك.",
                  style: Styles.textsty16.copyWith(color: Textcolor.grey700),
                ),
                Text(
                  " وسنرسل لك رمز التأكيد",
                  style: Styles.textsty16.copyWith(color: Textcolor.grey700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 290),
            child: Text(
              "البريد الالكتروني",
              style: Styles.textsty16.copyWith(color: Textcolor.black),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: CustomTextfield(
                controller: emailconfirm,
                ispassword: false,
                hint: "ادخل بريدك الالكتروني"),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: InkWell(
              onTap: () => GoRouter.of(context).push(AppRouter.kverificaton),
              child: const CustomButton(
                text: 'ارسال',
              ),
            ),
          )
        ],
      ),
    );
  }
}
