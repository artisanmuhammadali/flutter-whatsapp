import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);
  static const String id = 'chat';
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBE3DB),
      appBar: AppBar(
        leading: Row(
          children: const [
            Icon(Icons.arrow_back),
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/profile.jpeg'),
            )
          ],
        ),
        title: const Text('Muahmmad Ali'),
        actions: [
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.videocam),
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
          PopupMenuButton(
              icon : const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const[
                 PopupMenuItem(child: Text('View Contact')),
                 PopupMenuItem(child: Text('Media, links, and docs')),
                 PopupMenuItem(child: Text('Search')),
                 PopupMenuItem(child: Text('Mute notification')),
                 PopupMenuItem(child: Text('Disappearing message')),
                 PopupMenuItem(child: Text('Wallpaper')),
                 PopupMenuItem(child: Text('More')),
              ]
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 185, top: 20),
                      child: Container(
                        decoration:  const BoxDecoration(
                            color: Color(0xffE5FFCD),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )
                        ),
                        width: 190,
                        height: 40,
                        child:  Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text('Asslam o Alaikum'),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:10,top: 20.0),
                              child: Text('3:08 pm' , style: TextStyle(fontSize: 9),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 18.0),
                              child: Icon(Icons.done_all, size: 14, color: Colors.green,),
                            )
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
                Row(
                  children:  [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        decoration:  const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )
                        ),
                        width: 180,
                        height: 40,
                        child:  Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 15.0),
                              child: Text('Walikum Asslam'),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left:20,top: 20.0),
                              child: Text('3:08 pm' , style: TextStyle(fontSize: 9),),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon:  Icon(Icons.camera_alt),
                        icon:  Padding(
                          padding:  EdgeInsets.only(left: 8.0),
                          child: Icon(Icons.tag_faces_outlined),
                        ),
                        hintText: 'Message',
                        border: InputBorder.none
                      ),

                    ),
                  )
              ),
              const CircleAvatar(
                radius: 25,
                child: Icon(Icons.mic),
              )

            ],
          ),

        ],
      ),
    );
  }
}
