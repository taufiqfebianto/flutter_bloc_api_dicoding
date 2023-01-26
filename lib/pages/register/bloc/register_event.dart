part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterAccountEvent extends RegisterEvent {
  final String name;
  final String email;
  final String password;

  const RegisterAccountEvent(this.name, this.email, this.password);
  @override
  List<Object> get props => [name, email, password];

  @override
  String toString() {
    return 'RegisterAccountEvent : $name | $email | $password';
  }
}
