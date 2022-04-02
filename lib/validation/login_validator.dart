class LogInValidationMixin{

  String validateEmail(var userEmail){

    if(userEmail.length < 8)
      {
        return "Email en az 8 karakter olmalıdır";
      }
    else
      {
        return "";
      }
  }
  String validatePassword(var password){

    if(password.length < 6)
    {
      return "Şifre en az 6 karakter olmalıdır";
    }
    else
    {
      return "";
    }
  }
}