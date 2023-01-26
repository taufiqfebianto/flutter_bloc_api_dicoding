part of 'story_bloc.dart';

abstract class StoryState extends Equatable {
  const StoryState();

  @override
  List<Object> get props => [];
}

class StoryInitial extends StoryState {}

class GetAllStorySuccessState extends StoryState {
  final AllStoryResponseModel model;
  const GetAllStorySuccessState(this.model);
  @override
  List<Object> get props => [model];

  @override
  String toString() {
    return 'GetAllStorySuccessState : ${model.toJson()}';
  }
}
