import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/otp_column.dart';

class VerificationcodeBody extends StatelessWidget {
  const VerificationcodeBody({super.key});

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(left: 290),
            child: Text(
              "رمز التحقق",
              style: Styles.textsty24.copyWith(
                  fontWeight: FontWeight.w500, color: Textcolor.brown850),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90),
            child: Text(
              "أدخل الرمز الذي أرسلناه إلى رقمك 012345*****",
              style: Styles.textsty16.copyWith(color: Textcolor.grey700),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          const OtpRow(),
          const SizedBox(
            height: 48,
          ),
          Center(
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Appcolors.background,
                  actions: [
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 103,
                        width: 103,
                        decoration: BoxDecoration(
                            color: Appcolors.grey,
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                          child: Image.asset(
                            "assets/images/done_24px.png",
                            width: 57.9,
                            height: 57.9,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                        child: Text(
                      "تم بنجاح",
                      style: Styles.textsty24.copyWith(color: Textcolor.black),
                    )),
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                        child: Text(
                      "لقد تم إعادة تعيين كلمة المرور الخاصة بك بنجاح.",
                      style:
                          Styles.textsty16.copyWith(color: Textcolor.grey700),
                    )),
                    const SizedBox(
                      height: 26,
                    ),
                    Center(
                      child: InkWell(
                          onTap: () =>
                              GoRouter.of(context).push(AppRouter.klogin),
                          child: const CustomButton(text: "تسجيل الدخول")),
                    )
                  ],
                ),
              ),
              child: const CustomButton(
                text: 'تحقق',
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "إعادة ارسال",
                  style: Styles.textsty16.copyWith(color: Textcolor.brown850),
                ),
                Text(
                  "لم تستلم الرمز؟ ",
                  style: Styles.textsty16.copyWith(color: Textcolor.grey700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
