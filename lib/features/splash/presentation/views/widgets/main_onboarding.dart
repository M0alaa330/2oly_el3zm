import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/core/utlis/app_router.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/features/splash/presentation/views/widgets/boarding_container.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboarding extends StatelessWidget {
  MainOnboarding({super.key});
  final controller = PageController();
  List<String> images = [
    "assets/images/onboarding2.jpeg",
    "assets/images/onboarding3.jpeg",
    "assets/images/onboarding4.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              itemCount: images.length,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Positioned(
            left: screenWidth * 0.35,
            right: screenWidth * 0.35,
            bottom: screenHeight * 0.05,
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: Appcolors.brown850,
                  dotColor: Appcolors.background),
            ),
          ),
          Positioned(
              left: screenWidth * 0.040,
              right: screenWidth * 0.040,
              top: screenHeight * 0.450,
              bottom: screenHeight * 0.181,
              child: BoardingContainer(
                text1: "!مرحباً",
                text2:
                    "ابدأ رحلتك في حفظ القرآن الكريم بسهوله وبالوتيره التي تناسبك",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.klogin);
                },
                ontap2: () => GoRouter.of(context).push(AppRouter.khome),
              )),
        ],
      ),
    );
  }
}
