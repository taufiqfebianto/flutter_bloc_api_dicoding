part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class UserLoginSuccessState extends LoginState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'UserLoginSuccessState : ';
  }
}
