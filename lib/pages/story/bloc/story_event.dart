part of 'story_bloc.dart';

abstract class StoryEvent extends Equatable {
  const StoryEvent();

  @override
  List<Object> get props => [];
}

class GetAllStoryEvent extends StoryEvent {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'GetAllStoryEvent : ';
  }
}
