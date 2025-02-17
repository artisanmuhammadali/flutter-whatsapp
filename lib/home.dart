import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/setting.dart';
import 'package:whatsapp/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            actions: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.search),
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text('New group'),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text('New broadcast'),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text('Linked devices'),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text('Starred messages'),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: const Text('Settings'),
                        ),
                      ])
            ],
            bottom: const TabBar(
              tabs: [
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Cals')),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return  InkWell(
                      onTap: (){},
                      highlightColor: Colors.grey.shade50,
                      splashColor: Colors.grey.shade50,
                      child: ListTile(
                        leading:const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/profile.jpeg'),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, Chat.id);
                        },
                        title:const Text('Muhammad Ali'),
                        subtitle:const Text('Hey'),
                        trailing:const Text('7:06 PM'),
                      ),
                    );
                  }),
              Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.grey, width: 3)),
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage('images/profile.jpeg'),
                                    ),
                                  ),
                                  title: const Text('My Status'),
                                  subtitle:const  Text('Tap to add status'),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text('Recent updates'),
                                )
                              ],
                            );
                          }
                          if (index == 1) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.green, width: 3)),
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage('images/profile.jpeg'),
                                    ),
                                  ),
                                  title: const Text('Muhammad Ali'),
                                  subtitle: const Text('Today, 8:47 am'),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text('Viewed updates'),
                                )
                              ],
                            );
                          } else {
                            return ListTile(
                              leading: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.grey, width: 3)),
                                child: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('images/profile.jpeg'),
                                ),
                              ),
                              title:const Text('Muhammad Ali'),
                              subtitle:const Text('Today, 8:47 am'),
                              onTap: (){
                                Navigator.pushNamed(context, Status.id);
                              },
                            );
                          }
                        }),
                  ),
                ],
              ),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading:const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/profile.jpeg'),
                      ),
                      title:const Text('Muhammad Ali'),
                      subtitle: Text(index / 2 == 0
                          ? 'you missed call at 8:47 am'
                          : 'you missed video call at 8:47 am'),
                      trailing:
                          Icon(index / 2 == 0 ? Icons.call : Icons.video_call),
                    );
                  }),
            ],
          )),
    );
  }
}
