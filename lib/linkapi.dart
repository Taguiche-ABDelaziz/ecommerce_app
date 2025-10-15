class AppLink {
  static const String server = "https://mceefans.consubat.com/ecommerce";
  //test
  static const String test = "$server/test.php";

  //========= Auth ==========

  static const String signUp = "$server/auth/signup.php";
  static const String verfiyCodeSignup = "$server/auth/verfiycode.php";
  static const String login = "$server/auth/login.php";

  //========= ForgetPassword ==========
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycode = "$server/forgetpassword/verifycode.php";
}
