import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc() : super(StoryInitial()) {
    on<StoryEvent>((event, emit) {});
    on<GetAllStoryEvent>(
      (event, emit) async {
        try {} on DioError catch (e) {
          // ignore: use_rethrow_when_possible
          throw e;
        }
      },
    );
  }
}
