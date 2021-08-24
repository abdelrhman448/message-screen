import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messgas/module/chat_screen.dart';

Widget conversationItem(context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
         MaterialPageRoute(
          builder: (context) => ChatScreen(),
        ),
      );
    },
     child: Padding(
      padding: const EdgeInsets.only(top: 5, left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 5,
                      bottom: 5,
                    ),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmed',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'iam sending my message in i hop to replay to me gbhrn rehtht4h be gretrtrbtgt4',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.normal,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Text(
            '5:00pm',
            style: TextStyle(color: Colors.grey.shade500),
          )
        ],
      ),
    ),
  );
}

Widget myTextField({Icon icon, String hintText, InputBorder inputBorder}) {
  return TextField(
    keyboardType: TextInputType.multiline,
    maxLines: 5,
    minLines: 1,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      prefixIcon: icon,
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: EdgeInsets.all(14),
      isCollapsed: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey.shade100)),
    ),
  );
}
