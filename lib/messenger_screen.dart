import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget {
  Widget buildStoryItem() => Container(
  width: 60,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://api.time.com/wp-content/uploads/2018/12/square-meghan-markle-person-of-the-year-2018.jpg?quality=85'),
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(height: 6.0),
      Text(
        'Esraa Mansour Abdelrahman',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  )

  );

  Widget buildChatItem() =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://api.time.com/wp-content/uploads/2018/12/square-meghan-markle-person-of-the-year-2018.jpg?quality=85'),
              ),

              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Esraa Mansour Esraa Mansour Esraa Mansour Esraa Mansour',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'hello my name is esraa mansour abdelrahman abdelrazek',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 7.0,
                        width: 7.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text('5:00 AM'),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: 20,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                    'https://api.time.com/wp-content/uploads/2018/12/square-meghan-markle-person-of-the-year-2018.jpg?quality=85'),
              ),
              Text(
                'Chats',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),

            ],
          ),
          actions: [
            IconButton(
                icon: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.camera_alt,
                      size: 22,
                      color: Colors.white,
                    )),
                onPressed: () {}),
            IconButton(
                icon: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.edit,
                      size: 22,
                      color: Colors.white,
                    )),
                onPressed: () {})
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
              SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200]),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                ),
            ),
                 SizedBox(
                height: 10,
            ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder:(context,index)=>buildStoryItem(),
                        separatorBuilder:(context,index)=>SizedBox(width: 15,),
                        itemCount:6),
                  ),
                  SizedBox(
                    height:20,
                  ),
                 ListView.separated(
                   physics: NeverScrollableScrollPhysics(),
                    shrinkWrap:true ,             //to build all items in the same time on the screen...it is required here
                      itemBuilder:(context,index)=>buildChatItem(),
                      separatorBuilder:(context,index)=>SizedBox(height: 20,),
                      itemCount:15),

          ]),
              ),
        )
    );
  }
}


