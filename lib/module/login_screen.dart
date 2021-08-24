import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 450,
            width: 370,
            color: Colors.transparent,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:320),
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 4
                      ),
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 15.0,
                            offset: Offset(0.0, 0.0)
                        )
                      ],
                    ),


                  ),
                ),
                Container(
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.grey,
                        width: 1
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.0)
                      )
                    ],
                    color: Colors.white,
                  ),
                  child: ContainedTabBarView(
                    tabBarProperties: TabBarProperties(
                      width: 240,
                      height: 40,
                      alignment: TabBarAlignment.center,
                      indicatorColor: Colors.deepOrange,
                      indicatorSize: TabBarIndicatorSize.tab,

                    ),
                    initialIndex: 0,

                    tabs: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black87,

                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black87,

                        ),
                      ),
                    ],
                    views: [
                      Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16,right: 16,left: 16),
                              child: TextField(
                              keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.deepOrange,
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                    hintText: 'Email Address',
                                    hintStyle: TextStyle(
                                      color: Colors.grey
                                    ),
                                  contentPadding: EdgeInsets.all(15),

                                    alignLabelWithHint: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.grey.shade100)),
                                ),



                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.deepOrange,

                                decoration: InputDecoration(

                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  contentPadding: EdgeInsets.all(15),
                                  alignLabelWithHint: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.grey.shade100)),
                                  isCollapsed: true,




                                ),



                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                  ),
                                  Text(
                                    'Remember me',
                                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(
                                    child: Text(
                                      'forget Password ?',
                                      style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey),
                                    ),
                                    onPressed: (){},
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16,right: 16,left: 16),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.deepOrange,
                                decoration: InputDecoration(
                                  isCollapsed: true,
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  contentPadding: EdgeInsets.all(15),

                                  alignLabelWithHint: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.grey.shade100)),
                                ),



                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.deepOrange,

                                decoration: InputDecoration(

                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  contentPadding: EdgeInsets.all(15),
                                  alignLabelWithHint: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.grey.shade100)),
                                  isCollapsed: true,




                                ),



                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: Colors.deepOrange,

                                decoration: InputDecoration(

                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.grey,),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Colors.grey
                                  ),
                                  contentPadding: EdgeInsets.all(15),
                                  alignLabelWithHint: false,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Colors.grey.shade100)),
                                  isCollapsed: true,




                                ),



                              ),
                            ),



                          ],
                        ),
                      ),

                    ],
                    onChange: (index) => print(index),
                  ),
                  ),



                Padding(
                  padding: const EdgeInsets.only(
                      top: 320,
                  ),
                  child: Container(
                     height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      // boxShadow: <BoxShadow>[
                      //   BoxShadow(
                      //       color: Colors.black.withOpacity(0.6),
                      //       blurRadius: 15.0,
                      //       offset: Offset(0.0, 0.0)
                      //   )
                      // ],
                    ),


                  ),

                ),
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 55),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepOrange
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }

}