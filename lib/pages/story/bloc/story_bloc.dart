import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_api_dicoding/models/models.dart';
import 'package:flutter_bloc_api_dicoding/repository/app_repo.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryInitial()) {
    AppRepo repo = AppRepo();
    on<StoryEvent>((event, emit) {});
    on<GetAllStoryEvent>(
      (event, emit) async {
        try {
          AllStoryResponseModel response = await repo.allStory();
          emit(GetAllStorySuccessState(response));
        } on DioError catch (e) {
          // ignore: use_rethrow_when_possible
          throw e;
        }
      },
    );
  }
}
