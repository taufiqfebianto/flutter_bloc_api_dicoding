part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserLoginEvent extends LoginEvent {
  final String username;
  final String password;

  const UserLoginEvent(this.username, this.password);
  @override
  List<Object> get props => [username, password];

  @override
  String toString() {
    return 'UserLoginEvent : $username | $password ';
  }
}
