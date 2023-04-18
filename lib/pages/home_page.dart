import 'package:bloc_project/pages/chat_page.dart';
import 'package:bloc_project/provider/chat_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Gpt"),
        centerTitle: true,
      ),
      // body:
      //  BlocBuilder<InternetBloc, InternetState>(builder: (context, state) {
      //   return Center(
      //     child: Column(
      //       children: <Widget>[
      //         state is InternetONState
      //             ? const Text("Connected")
      //             : state is InternetOFFState
      //                 ? const Text("Not Connected")
      //                 : const Text("loading"),
      //       ],
      //     ),
      //   );
      // }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChangeNotifierProvider<ChatPageProvider>(
                    create: (context) => ChatPageProvider(),
                    child: const ChatbotScreen()),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
