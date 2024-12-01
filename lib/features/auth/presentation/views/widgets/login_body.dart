import 'package:flutter/material.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_tabbar.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 129, left: 129, top: 76, bottom: 16),
              child: ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Textcolor.brawn700, Appcolors.brown850],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ).createShader(
                    Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height)),
                child: Text(
                  "أولي العزم",
                  style: Styles.textstyle32,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 61,
                right: 62,
              ),
              child: Text(
                "قم بتسجيل الدخول أو إنشاء حساب جدبد لحفظ تقدمك",
                textAlign: TextAlign.center,
                style: Styles.textsty16.copyWith(color: Textcolor.grey700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24.0, right: 16, left: 16),
              child: CustomTabBar(),
            )
          ],
        ),
      ),
    );
  }
}
