import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_list_get_x/app/data/services/service.dart';

import 'app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());

  runApp(
    GetMaterialApp(
      title: "Todo List using GetX",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
