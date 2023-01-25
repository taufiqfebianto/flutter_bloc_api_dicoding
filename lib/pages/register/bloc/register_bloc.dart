import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';


part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {
      
    });
     on<RegisterAccountEvent>((event, emit) async {
      try {} on DioError catch (e){
        // ignore: use_rethrow_when_possible
        throw e;
      }
    },);
  }
}
