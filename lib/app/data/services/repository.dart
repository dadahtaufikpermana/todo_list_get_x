import '../models/task.dart';

class TaskRepository {
  TaskRepository taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task>readTask() => taskProvider.readTask();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}