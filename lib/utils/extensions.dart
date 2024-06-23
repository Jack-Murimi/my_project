extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidKenyaPhoneNumber {
    final phoneRegExp = RegExp(r"^[17][0-9]{8}$");
    return phoneRegExp.hasMatch(this);
  }
}
