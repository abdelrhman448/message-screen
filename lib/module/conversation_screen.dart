import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messgas/constants/constant.dart';
import 'package:messgas/shared/component/component.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Color(myColor),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Home/Messages",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: myTextField(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 20,
                  ),
                  hintText: "Search...",
                  inputBorder: InputBorder.none),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) => conversationItem(context),
              separatorBuilder: (context, index) => SizedBox(
                height: 16,
              ),
              itemCount: 15,
            ),
          ],
        ),
      ),
    );
  }
}
