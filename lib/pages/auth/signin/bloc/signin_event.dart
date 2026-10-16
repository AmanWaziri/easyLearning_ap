abstract class SigninEvent {
  const SigninEvent();
}
class EmailEvent extends SigninEvent {
  String email;
  EmailEvent(this.email);
}

class PasswordEvent extends SigninEvent {
  String password;
  PasswordEvent(this.password);
}
