part of 'filtered_todos_bloc.dart';

abstract class FilteredTodoEvent extends Equatable{
  const FilteredTodoEvent();

  @override
  List<Object> get props => [];
}

class CalculateFilteredTodoEvent extends FilteredTodoEvent {
  final List<Todo> filteredTodos;
  CalculateFilteredTodoEvent({
    required this.filteredTodos,
  });

  @override
  String toString() => 'CalculateActiveTodoCountEvent(filteredTodos: $filteredTodos)';

  @override
  List<Object> get props => [filteredTodos];
}