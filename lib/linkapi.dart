class AppLink {
  static const String server = "https://mceefans.consubat.com/ecommerce";

  //========= Image ==========

  static const String imagestatic =
      "https://mceefans.consubat.com/ecommerce/upload";
  static const String imagesCategories = "$imagestatic/categories";
  static const String imagesItems = "$imagestatic/items";
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
  //========= Home ==========
  static const String home = "$server/home.php";
  //========= Items ==========
  static const String items = "$server/items/items.php";
}
