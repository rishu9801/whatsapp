import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/contact_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.grey),
          ),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  CupertinoIcons.camera,
                  color: Colors.grey,
                  size: 20.0,
                )),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                  size: 20.0,
                )),
            IconButton(
                onPressed: () => {},
                icon: const Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.grey,
                  size: 20.0,
                ))
          ],
          bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ]),
        ),
        body: const TabBarView(children: [ContactList()]),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, SelectContactScreen.routeName);
            },
            backgroundColor: tabColor,
            child: const Icon(
              Icons.comment,
              color: Colors.white,
            )),
      ),
    );
  }
}
