import 'package:get/get.dart';

import '../../../data/models/task.dart';
import '../../../data/services/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final tasks = <Task>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }
  @override
  void onClose() {
    super.onClose();
  }
}
