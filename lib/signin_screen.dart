import 'package:flutter/material.dart';
import 'package:flutter_loginpage/constants.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/perosn.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter
                  )
                ),
              )
          ),
          Expanded(
            flex: 4,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('SIGN IN', style: Theme.of(context).textTheme.display1,),
                          Text('SIGN UP', style: Theme.of(context).textTheme.button,),
                        ],
                      ),


                      Spacer(),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Icon(
                                Icons.alternate_email,
                                color: kPrimaryColor,
                              ),
                            ),
                            Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email Address",
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                ),
                              )
                          ),
                        ],
                      ),

                      Spacer(),


                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white.withOpacity(.5)
                                ),
                              ),
                              child: Icon(
                                  Icons.android,
                                  color: Colors.white.withOpacity(.5)
                              ),


                            ),
                            SizedBox(width: 20,),


                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(.5)
                                ),
                              ),
                              child: Icon(
                                  Icons.chat,
                                  color: Colors.white.withOpacity(.5)
                              ),
                            ),

                            Spacer(),    // 빈 공간 채우기.

                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryColor,
                              ),
                              child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
              ),
          )
        ],
      ),
    );
  }
}
