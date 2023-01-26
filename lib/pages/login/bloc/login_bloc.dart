import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_api_dicoding/repository/app_repo.dart';

import '../../../models/models.dart';
import '../../../shared/shared.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    AppRepo repo = AppRepo();
    on<LoginEvent>((event, emit) {});
    on<UserLoginEvent>(
      (event, emit) async {
        try {
          LoginResponseModel response =
              await repo.login(email: event.username, password: event.password);
          storage.putString(
              boxName: describeEnum(StorageConstants.user),
              key: 'token',
              value: response.loginResult.token);
              debugPrint(response.loginResult.token);
              emit(UserLoginSuccessState());
        } on DioError catch (e) {
          // ignore: use_rethrow_when_possible
          throw e;
        }
      },
    );
  }
}
