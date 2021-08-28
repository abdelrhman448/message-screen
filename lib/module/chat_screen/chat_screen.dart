import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messgas/models/message_model.dart';
import 'package:messgas/models/user_model.dart';
import 'package:messgas/module/chat_screen/cubit_states.dart';
import 'package:messgas/shared/component/component.dart';
import 'package:messgas/shared/component/constant/constant.dart';

import 'cubit.dart';

class ChatScreen extends StatelessWidget {
  Color myColor = Colors.grey.shade900;
  UserModel userModel;
  ChatScreen({this.userModel});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ChatCubit()..getMessages(userModel: userModel),
      child: BlocConsumer<ChatCubit,ChatStates>(
        listener: (context,state){
          if(state is successChatState){
            ChatCubit.myobj(context).getMessages(userModel: this.userModel);
          }
        },
        builder: (context,state){
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
                      child:ConditionalBuilder(
                        condition: ChatCubit.myobj(context).messages.length>0,
                        builder:(context)=> ListView.separated(
                          separatorBuilder: (context,index)=>SizedBox(height: 16,),
                          itemCount: ChatCubit.myobj(context).messages.length,
                          itemBuilder:(context,index){
                            MessageModel model=ChatCubit.myobj(context).messages[index];
                            if(model.senderUid==user)
                              return MyMessage(messageModel: model);


                            return UserMessage(messageModel: model);
                          },
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
                            child: myTextField(hintText: "Type a Text...",myController: ChatCubit.myobj(context).myMessage),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              ChatCubit.myobj(context).sendMessage(userModel: this.userModel);
                            },
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          );
        },

      ),
    );
  }
}



class MyMessage extends StatelessWidget{
  MessageModel messageModel;
  MyMessage({this.messageModel});

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
                messageModel.text ,
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
MessageModel messageModel;
UserMessage({this.messageModel});
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
                  messageModel.text,
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
