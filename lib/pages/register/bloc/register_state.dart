part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterAccountSuccessState extends RegisterState {
  final String regStatus;
  const RegisterAccountSuccessState(this.regStatus);
  @override
  List<Object> get props => [regStatus];

  @override
  String toString() {
    return 'RegisterAccountSuccessState : $regStatus';
  }
}
