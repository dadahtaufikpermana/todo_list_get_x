import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/keys.dart';
import '../../models/task.dart';
import '../../services/service.dart';

class TaskProvider{
  final _storage = Get.find<StorageService>();

  // {'tasks': [
  // {'title': 'work',
  // 'color': '#ff123456',
  // 'icon': 0xe123}
  // ];}

  List<Task> readTask(){
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
    .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks){
    _storage.write(taskKey, jsonEncode(tasks));
  }
}