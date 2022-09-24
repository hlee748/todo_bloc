part of 'todo_filter_bloc.dart';

//cubit 과의 결정적인 차이
//cubit 에서는 이벤트를 따로 다루지 않음

abstract class TodoFilterEvent extends Equatable {
  const TodoFilterEvent();

  @override
  List<Object> get props => [];
}

class ChangeFilterEvent extends TodoFilterEvent {
  final Filter newFilter;
  ChangeFilterEvent({
    required this.newFilter,
});

  @override
  String toString() => 'ChangeFilterEvent(newFilter: $newFilter)';

  @override
  List<Object> get props => [newFilter];
}