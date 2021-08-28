import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:messgas/models/user_model.dart';
import 'package:messgas/shared/component/constant/constant.dart';

import 'cubitStates.dart';

class ConversationCubit extends Cubit<ConversationStates> {
  ConversationCubit() : super(initialSocialStates());

  static ConversationCubit get(context) => BlocProvider.of(context);
  UserModel userModel;

  List<UserModel> myUsers = [];

  void getUserData() {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user)
        .get()
        .then((value) {
      print('my valur${user}');
      userModel = UserModel.fromMap(value.data());

      print('my model${userModel.uid}');
      print('my model${userModel.name}');

      emit(GetUserSucessSocialStates());
    }).catchError((onError) {
      print(onError);
      emit(GetUserErrorSocialStates());
    });
  }

  void getUsers() {
    FirebaseFirestore.instance.collection('users').get().then((value) {
      myUsers = [];
      value.docs.forEach((element) {
        print(element.data());
        userModel = UserModel.fromMap(element.data());
        if(userModel.uid!=user){
          myUsers.add(userModel);
        }
      });
      print(myUsers.length);
    });
  }
}
