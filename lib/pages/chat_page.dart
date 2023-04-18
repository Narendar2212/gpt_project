import 'dart:async';

import 'package:bloc_project/provider/chat_page_provider.dart';
import 'package:bloc_project/widgets/drop_down_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  State<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen>
    with TickerProviderStateMixin {
  AnimationController? animController;
  Animation<Offset>? animOffset;
  int? delay;
  @override
  void initState() {
    animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: animController!);
    animOffset = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(curve);
    if (delay == null) {
      animController!.forward();
    } else {
      Timer(const Duration(milliseconds: 500), () {
        animController!.forward();
      });
    }
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final provider = Provider.of<ChatPageProvider>(context, listen: false);
      provider.initialization();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<ChatPageProvider>(
      builder: (context, chatModel, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Ask Me"),
          centerTitle: true,
          actions: [
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(size.width * 0.05))),
                    context: context,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Flexible(
                              child: Text(
                            "Language",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          )),
                          StreamBuilder<String>(
                              stream: chatModel.language,
                              builder: (context, snapshot) {
                                return DropdownButton<String>(
                                  value: snapshot.data,
                                  onChanged: (value) {
                                    chatModel.onSlecteLanugage(value!);
                                    if (value.isNotEmpty) {
                                      Navigator.pop(context);
                                    }
                                  },
                                  items: languageList.map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                );
                              })
                        ],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.035),
                  child: Container(
                      decoration: const BoxDecoration(),
                      child: const Icon(Icons.language)),
                )),
          ],
        ),
        body: SafeArea( 
          child: Column(
            children: [
              Flexible(
                  child: FadeTransition(
                opacity: animController!,
                child: SlideTransition(
                  position: animOffset!,
                  child: Container(
                    height: size.height * 0.85,
                    width: size.width,
                    decoration: const BoxDecoration(),
                    child: FadeTransition(
                      opacity: animController!,
                      child: SlideTransition(
                        position: animOffset!,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          controller: chatModel.scrollController,
                          itemCount: chatModel.chatMessages.length,
                          itemBuilder: (BuildContext context, int index) =>
                              chatModel.chatMessages.isNotEmpty
                                  ? Align(
                                      alignment: Alignment.centerRight,
                                      child: SlideTransition(
                                          position: Tween<Offset>(
                                                  begin: const Offset(1, 0),
                                                  end: Offset.zero)
                                              .animate(CurvedAnimation(
                                                  parent: animController!,
                                                  curve: Curves.linear)),
                                          child: chatModel.chatMessages[index]),
                                    )
                                  : const SizedBox(),
                        ),
                      ),
                    ),
                  ),
                ),
              )),
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 1),
                    onPressed: () {
                      chatModel.stopSpeak();
                    },
                    child: const Text("Stop")),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.025,
                    vertical: size.width * 0.025),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: chatModel.controller,
                          decoration: const InputDecoration.collapsed(
                              hintText: "Ask Anything.."),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            chatModel.sendMessages(chatModel.controller.text);
                          },
                          child: const Icon(Icons.send)),
                      InkWell(
                          onTap: () {
                            chatModel.onTapMic();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.035,
                            ),
                            child: Icon(chatModel.speechToText.isNotListening
                                ? Icons.mic_off
                                : Icons.mic),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
