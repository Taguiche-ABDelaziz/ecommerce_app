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
  static const String resend = "$server/auth/resend.php";

  //========= ForgetPassword ==========
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycode = "$server/forgetpassword/verifycode.php";
  //========= Home ==========
  static const String home = "$server/home.php";
  //========= Items ==========
  static const String items = "$server/items/items.php";
  //========= favorite ==========
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String deletefromfavorite =
      "$server/favorite/deletefromfavorite.php";
}
