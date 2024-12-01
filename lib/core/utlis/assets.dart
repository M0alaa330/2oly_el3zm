abstract class Assets {
  static const onboarding1 = "assets/images/onboarding1.jpeg";
  static const onboarding2 = "assets/images/onboarding2.jpeg";
  static const onboarding3 = "assets/images/onboarding3.jpeg";
  static const onboarding4 = "assets/images/onboarding4.jpeg";
}

class Images {
  final String image;
  Images({required this.image});
}

List<Images> images = [
  Images(image: "assets/images/onboarding2.jpeg"),
  Images(image: "assets/images/onboarding3.jpeg"),
  Images(image: "assets/images/onboarding4.jpeg")
];
