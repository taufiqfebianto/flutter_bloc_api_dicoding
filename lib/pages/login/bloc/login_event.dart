part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserLoginEvent extends LoginEvent{
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'UserLoginEvent : ';
  }
}