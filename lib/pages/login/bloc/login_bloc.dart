import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_api_dicoding/pages/login/bloc/login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      
    });
    on<UserLoginEvent>((event, emit) async {
      try {} on DioError catch (e){
        // ignore: use_rethrow_when_possible
        throw e;
      }
    },);
  }
}
