import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_story_event.dart';
part 'add_story_state.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  AddStoryBloc() : super(AddStoryInitial()) {
    on<AddStoryEvent>((event, emit) {
      
    });
  }
}
