import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/data.dart';
import 'chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.video_camera_solid),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.phone_fill),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              hintText: "Type a message",
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  CupertinoIcons.smiley_fill,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Icon(
                        CupertinoIcons.paperclip,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Icon(
                        CupertinoIcons.money_dollar_circle_fill,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Icon(
                        CupertinoIcons.camera_fill,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}
