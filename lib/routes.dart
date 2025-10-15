import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screnn/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screnn/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce/view/screnn/auth/signup.dart';
import 'package:ecommerce/view/screnn/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce/view/screnn/auth/success_signup.dart';
import 'package:ecommerce/view/screnn/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce/view/screnn/auth/verifycodesignup.dart';
import 'package:ecommerce/view/screnn/home.dart';
import 'package:ecommerce/view/screnn/language.dart';
import 'package:ecommerce/view/screnn/onboarding.dart';
import 'package:ecommerce/view/screnn/auth/login.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const Language(),
    middlewares: [MyMiddleware()],
  ),
  //GetPage(name: "/", page: () => TestView()),
  // OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
    name: AppRoute.verifyCodeSignup,
    page: () => const VerifyCodeSingUp(),
  ),
  // Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signup, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successSignup, page: () => const SuccessSignUp()),
  GetPage(
    name: AppRoute.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  //Home
  GetPage(name: AppRoute.homepage, page: () => const HomePage()),
];
