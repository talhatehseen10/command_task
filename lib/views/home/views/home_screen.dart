import 'package:avatar_glow/avatar_glow.dart';
import 'package:command_task_test/constants/constants.dart';
import 'package:command_task_test/services/voice/voice_service.dart';
import 'package:command_task_test/utils/constant_widgets.dart';
import 'package:command_task_test/views/home/components/task_card.dart';
import 'package:command_task_test/views/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  static const String routeName = "/home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: customText(text: AppStrings.HOME_SCREEN)),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          controller.isListening.value = true;
          String voiceText = await VoiceService().listenToVoice();
          controller.isListening.value = false;
          controller.processVoiceCommand(voiceText);
        },
        shape: CircleBorder(),
        child: Obx(
          () =>
              controller.isListening.value
                  ? AvatarGlow(
                    duration: Duration(milliseconds: 2000),
                    glowColor: Colors.blue,
                    repeat: true,
                    child: Material(
                      // Replace this with your desired icon
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        radius: 30.0,
                        child: Icon(Icons.mic, size: 30.0, color: Colors.blue),
                      ),
                    ),
                  )
                  : Icon(Icons.mic, color: Colors.white),
        ),
      ),

      body: Obx(
        () =>
            controller.listRefresh.value
                ? SizedBox()
                : ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.PADDING_10),
                  itemCount: controller.cards.length,
                  itemBuilder: (context, index) {
                    return TaskCard(task: controller.cards[index]);
                  },
                ),
      ),
    );
  }
}
