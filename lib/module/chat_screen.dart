import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messgas/shared/component/component.dart';

class ChatScreen extends StatelessWidget {
  Color myColor = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.pink,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: CircleAvatar(
            radius: 22,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Osama'
            ),
            Text(
              'Online',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.forward_rounded,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.star,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.copy,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.delete,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
      Expanded(
      child:ListView.separated(
          separatorBuilder: (context,index)=>SizedBox(height: 16,),
           itemCount: 6,
           itemBuilder:(context,index)=>Column(
             children: [
               MyMessage(),
               UserMessage(),
             ],
           ),
    ),
      ),
       ],
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                  left: 16,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        myColor = Colors.pink;
                      },
                      child: Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(42),
                            color: myColor),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.white),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: myTextField(hintText: "Type a Text..."),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}



class MyMessage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),

              ),
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              child: Text(
                'my name is abdo' ,
                style: TextStyle(
                  fontSize:16,
                  fontWeight: FontWeight.w500,
                ),
              ),

            ),
          ),

        ),
      ],
    );
  }

}

class UserMessage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16,right: 16,left: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),

                ),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                child: Text(
                  'my name is abdo',
                  style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),

              ),
            ),

          ),
        ],
      ),
    );
  }

}
