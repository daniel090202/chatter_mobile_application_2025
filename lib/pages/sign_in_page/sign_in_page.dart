import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF7F30FE), Color(0xFF6380FB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                    MediaQuery.of(context).size.width,
                    105.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Login to your account",
                      style: TextStyle(
                        color: Color(0xFFBBB0FF),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 30.0,
                    ),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(32.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // >>> Text input for email:
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // >>> When using the text field with prefix or suffix icons, we need to add the content padding to ensure the text input in the center of the text field:
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF7F30FE),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            // >>> Text input for password:
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.0,
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // >>> When using the text field with prefix or suffix icons, we need to add the content padding to ensure the text input in the center of the text field:
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Color(0xFF7F30FE),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
