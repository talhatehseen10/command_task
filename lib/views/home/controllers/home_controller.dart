import 'dart:developer';

import 'package:command_task_test/services/helper_function/date_time_utils.dart';
import 'package:command_task_test/services/llm/llm_service.dart';
import 'package:command_task_test/utils/custom_snackbar.dart';
import 'package:command_task_test/utils/preferences.dart';
import 'package:command_task_test/views/home/models/task_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Task> cards = <Task>[];

  RxBool listRefresh = false.obs;

  RxBool isListening = false.obs;

  @override
  void onInit() {
    cards = Preferences().getMeetings();
    super.onInit();
  }

  void processVoiceCommand(String text) async {
    try {
      final parsed = await parseCommand(text);
      log("IN PROCESS METHOD +++++++++++++++++++++++++++++ $parsed");
      final action = parsed['action'];

      if (action == 'create') {
        cards.add(
          Task(
            action: parsed['action'],
            title: parsed['title'],
            description: parsed['description'] ?? "",
            dateTime: parseDateTimeOrNow(parsed['dateTime']),
          ),
        );
      } else if (action == 'update') {
        final index = cards.indexWhere((t) => t.title == parsed['title']);
        if (index != -1) {
          cards[index] = Task(
            action: parsed['action'],
            title: parsed['title'],
            description: parsed['description'] ?? cards[index].description,
            dateTime:
                parsed['dateTime'] != null
                    ? DateTime.parse(parsed['dateTime'])
                    : cards[index].dateTime,
          );
        }
      } else if (action == 'delete') {
        cards.removeWhere((t) => t.title == parsed['title']);
      }

      listRefresh.value = true;
      cards.sort((a, b) => a.dateTime.compareTo(b.dateTime));
      Preferences().setMeetings(cards);
      listRefresh.value = false;

      // Chronological order
    } catch (e) {
      CustomSnackBar.showCustomErrorToast(message: e.toString());
    }
  }
}
