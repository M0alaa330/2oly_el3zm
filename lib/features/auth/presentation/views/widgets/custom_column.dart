import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_row.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_textfield.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController pass = TextEditingController();
    return Column(
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
          height: 24,
        ),
        Text(
          "تأكيد كلمة المرور",
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
        const CustomRow(),
        const SizedBox(
          height: 32,
        ),
        InkWell(
          onTap: () => GoRouter.of(context).push(AppRouter.khome),
          child: const CustomButton(
            text: "تسجيل الدخول",
          ),
        )
      ],
    );
  }
}
