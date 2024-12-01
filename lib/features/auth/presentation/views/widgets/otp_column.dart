import 'package:flutter/material.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/custom_otp.dart';

class OtpRow extends StatelessWidget {
  const OtpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomOtp(),
        CustomOtp(),
        CustomOtp(),
        CustomOtp(),
        CustomOtp(),
        CustomOtp()
      ],
    );
  }
}
