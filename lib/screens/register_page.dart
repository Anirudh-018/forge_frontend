  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg_provider/flutter_svg_provider.dart';
  import 'package:nft_forge/screens/signin_page.dart';
  import '../widgets/widget.dart';
  import '../constants.dart';
  import 'package:nft_forge/screens/homescreen.dart';

  class RegisterPage extends StatefulWidget {
    @override
    _RegisterPageState createState() => _RegisterPageState();
  }

  class _RegisterPageState extends State<RegisterPage> {
    bool passwordVisibility = true;
    String password = ''; // Define password variable
    String confirmPassword = '';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image(
              width: 24,
              color: Colors.white,
              image: Svg('assets/images/back_arrow.svg'),
            ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Register",
                              style: kHeadline,
                            ),
                            Text(
                              "Create new account to get started.",
                              style: kBodyText2,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyTextField(
                              hintText: 'Name',
                              inputType: TextInputType.name,
                            ),
                            MyTextField(
                              hintText: 'Email',
                              inputType: TextInputType.emailAddress,
                            ),
                            MyPasswordField(
                              isPasswordVisible: passwordVisibility,
                              onTap: () {
                                setState(() {
                                  passwordVisibility = !passwordVisibility;
                                });
                              },
                             
                            ),
                            MyConfirmPasswordField(

                              isPasswordVisible: passwordVisibility,
                              onTap: () {
                                setState(() {
                                  passwordVisibility = !passwordVisibility;
                                });
                              },
                            
                            ),
                            MyTextButton(
                              
                              buttonName: 'Register',
                              onTap: () {
                                  // Passwords are valid, proceed with registration
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                              },
                              bgColor: Colors.white,
                              textColor: Colors.black87,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Or register with ",
                                  style: kBodyText,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Google Sign In
                                IconButton(
                                  icon: Image(
                                    width: 30,
                                    image: AssetImage('assets/images/google.png'),
                                  ),
                                  onPressed: () {
                                    // Handle Google Sign In
                                  },
                                ),
                                // Facebook Sign In
                                IconButton(
                                  icon: Image(
                                    width: 30,
                                    image:
                                        AssetImage('assets/images/facebook.png'),
                                  ),
                                  onPressed: () {
                                    // Handle Facebook Sign In
                                  },
                                ),
                                // Twitter Sign In
                                IconButton(
                                  icon: Image(
                                    width: 30,
                                    image:
                                        AssetImage('assets/images/twitter.png'),
                                  ),
                                  onPressed: () {
                                    // Handle Twitter Sign In
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have account?",
                                  style: kBodyText,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                        builder: (context) => SignInPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Sign in',
                                    style: kBodyText.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    bool validatePasswords(String password, String confirmPassword) {
      if (password != confirmPassword) {
        // Passwords don't match
        // You can show an error message or handle it as needed
        return false;
      }

      // Password validation criteria
      bool hasUppercase = false;
      bool hasLowercase = false;
      bool hasDigit = false;

      for (int i = 0; i < password.length; i++) {
        if (password[i].toUpperCase() == password[i]) {
          hasUppercase = true;
        } else if (password[i].toLowerCase() == password[i]) {
          hasLowercase = true;
        } else if (isDigit(password[i])) {
          hasDigit = true;
        }
      }

      // Check if the password meets the criteria
      if (password.length >= 8 && hasUppercase && hasLowercase && hasDigit) {
        // Password is valid
        return true;
      } else {
        // Password is not valid
        // You can show an error message or handle it as needed
        return false;
      }
    }

    bool isDigit(String str) {
      return str.runes.every((rune) => rune >= 48 && rune <= 57);
    }
  }
