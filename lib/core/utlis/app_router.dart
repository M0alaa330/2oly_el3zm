import 'package:go_router/go_router.dart';
import 'package:olly_el3zm/features/auth/presentation/views/forgetpass_screen.dart';
import 'package:olly_el3zm/features/auth/presentation/views/login_screen.dart';
import 'package:olly_el3zm/features/auth/presentation/views/verificationcode_screen.dart';

import 'package:olly_el3zm/features/home/presentation/views/hades_screen.dart';
import 'package:olly_el3zm/features/home/presentation/views/home_screen.dart';
import 'package:olly_el3zm/features/home/presentation/views/sora_screen.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/calender_body.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/pray_time_body.dart';
import 'package:olly_el3zm/features/home/presentation/views/widgets/qurann_body.dart';
import 'package:olly_el3zm/features/splash/presentation/views/widgets/main_onboarding.dart';
import 'package:olly_el3zm/features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static const kmainonboarding = "/mainonboarding";
  static const konboarding1 = "/onboarding1";
  static const klogin = "/login";
  static const kforgetpass = "/forgetpass";
  static const kverificaton = "/verification";
  static const khome = "/home";
  static const kcalender = "/calender";
  static const kpraytime = "/praytime";
  static const kahdes = "/ahdes";
  static const kquran = "/quran";
  static const ksora = "/sora";
  static const khadithdetails = "/hadithdetails";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kmainonboarding,
        builder: (context, state) => MainOnboarding(),
      ),
      GoRoute(path: klogin, builder: (context, state) => const LoginScreen()),
      GoRoute(
          path: kforgetpass,
          builder: (context, state) => const ForgetpassScreen()),
      GoRoute(
          path: kverificaton,
          builder: (context, state) => const VerificationcodeScreen()),
      GoRoute(path: khome, builder: (context, index) => const HomeScreen()),
      GoRoute(
          path: kcalender, builder: (context, state) => const CalenderBody()),
      GoRoute(path: kpraytime, builder: (context, state) => PrayTimeBody()),
      GoRoute(path: kahdes, builder: (context, state) => const HadesScreen()),
      GoRoute(path: kquran, builder: (context, state) => const QurannBody()),
    ],
  );
}
