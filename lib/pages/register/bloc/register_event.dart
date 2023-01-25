part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterAccountEvent extends RegisterEvent{
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'RegisterAccountEvent : ';
  }
}
