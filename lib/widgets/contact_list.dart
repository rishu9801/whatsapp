import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/mobile_chat_screen.dart';

import '../utils/data.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  )
                },
                child: ListTile(
                  textColor: Colors.grey,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(info[index]['profilePic'].toString()),
                  ),
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 14),
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 20,
                endIndent: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
