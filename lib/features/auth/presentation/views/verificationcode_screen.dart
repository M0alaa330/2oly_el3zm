import 'package:flutter/material.dart';
import 'package:olly_el3zm/features/auth/presentation/views/widgets/verificationcode_body.dart';

class VerificationcodeScreen extends StatelessWidget {
  const VerificationcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerificationcodeBody(),
    );
  }
}
