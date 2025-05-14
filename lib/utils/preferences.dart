import 'dart:developer';

import 'package:command_task_test/views/home/models/task_model.dart';
import 'package:get_storage/get_storage.dart';

class Preferences {
  final storage = GetStorage();

  void setMeetings(List<Task> meetings) {
    final jsonList = meetings.map((e) => e.toJson()).toList();
    storage.write("meetings", jsonList);

    log("MEETINGS ++++++++++++++++++++++++ ${storage.read("meetings")}");
  }

  List<Task> getMeetings() {
    final jsonList = storage.read("meetings") ?? [];
    log("MEETINGS ++++++++++++++++++++++++ ${storage.read("meetings")}");

    return (jsonList as List)
        .map((e) => Task.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }
}
