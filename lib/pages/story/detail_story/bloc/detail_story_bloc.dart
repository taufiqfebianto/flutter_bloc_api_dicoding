import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detail_story_event.dart';
part 'detail_story_state.dart';

class DetailStoryBloc extends Bloc<DetailStoryEvent, DetailStoryState> {
  DetailStoryBloc() : super(DetailStoryInitial()) {
    on<DetailStoryEvent>((event, emit) {
      
    });
  }
}
