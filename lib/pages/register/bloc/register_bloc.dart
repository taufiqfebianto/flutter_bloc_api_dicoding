import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_api_dicoding/repository/app_repo.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    AppRepo repo = AppRepo();
    on<RegisterEvent>((event, emit) {});
    on<RegisterAccountEvent>(
      (event, emit) async {
        try {
          await repo.register(
              name: event.name, email: event.email, password: event.password);
          emit(const RegisterAccountSuccessState('User Created'));
        } on DioError catch (e) {
          // ignore: use_rethrow_when_possible
          throw e;
        }
      },
    );
  }
}
