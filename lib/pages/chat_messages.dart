import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  final String text;
  final String sender;
  // final String type;
  const ChatMessages({
    Key? key,
    required this.text,
    required this.sender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.015, vertical: size.width * 0.025),
      child: SizedBox(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text(sender[0]),
          ),
          SizedBox(
            width: size.width * 0.85,
            child: Padding(
              padding: EdgeInsets.only(left: size.width * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sender,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
