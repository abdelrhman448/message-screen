import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messgas/models/message_model.dart';
import 'package:messgas/models/user_model.dart';
import 'package:messgas/shared/component/constant/constant.dart';

import 'cubit_states.dart';

class ChatCubit extends Cubit<ChatStates> {

  List<MessageModel> messages = [];
  TextEditingController myMessage=TextEditingController();

  ChatCubit() : super(initialChatState());

  static ChatCubit myobj(context) => BlocProvider.of(context);

  void sendMessage({
    @required UserModel userModel,
  }) {
    emit(loadingChatState());

    MessageModel messageModel = MessageModel(
      senderUid: user,
      recieverUid: userModel.uid,
      text: myMessage.text,
      time: DateTime.now().toString(),
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .collection('chats')
        .doc(' JkeSbAGJyMBZ4lBhKJZ7')
        .collection('messages')
        .add(messageModel.toMap())
        .then((value) {
      saveMessage(
          userModel: userModel,
          messageModel: messageModel,
          messageId: value.id);
      myMessage.clear();

      emit(successChatState());
    }).catchError((onError) {
      emit(errorChatState());
    });
  }

  void saveMessage({
    @required UserModel userModel,
    @required MessageModel messageModel,
    @required String messageId,
  }) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(' JkeSbAGJyMBZ4lBhKJZ7')
        .collection('chats')
        .doc(user)
        .collection('messages')
        .doc(messageId)
        .set(messageModel.toMap())
        .then((value) {

      emit(successChatState());
    }).catchError((onError) {
      emit(errorChatState());
    });
  }

  void getMessages({@required UserModel userModel}) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .collection('chats')
        .doc(' JkeSbAGJyMBZ4lBhKJZ7')
        .collection('messages')
        .orderBy('time', descending: false)
        .snapshots()
        .listen((event) {
      messages = [];

      event.docs.forEach((element) {
        print(element.data());

        messages.add(MessageModel.fromMap(element.data()));
        print((MessageModel.fromMap(element.data())).text);
      });
      emit(GetsuccessChatState());
    });
  }
}
