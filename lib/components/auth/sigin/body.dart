import 'package:flutter/material.dart';
import '/components/auth/auth_text_field.dart';
import '/components/general/large_btn.dart';
import '/utils/general/tap_sound.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController pswdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double logoDimension = 50.0;

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome back, ',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "You've beeen missing!",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                        fontSize: 18.5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              AuthTextField(
                controller: emailController,
                hintText: 'Email...',
              ),
              SizedBox(height: 10,),
              AuthTextField(
                controller: pswdController,
                hintText: 'Password...',
                obscure: true,
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        TapSound.playTapSound();
                        if (mounted) {
                          Navigator.pushNamed(context, '/auth/forgot_password');
                        }
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                          fontSize: 19.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              LargeBtn(
                icon: Icons.login,
                text: 'Sign In',
                bgColor: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.secondary,
                anchor: '/home',
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: logoDimension + 40.0,
                      width: logoDimension + 40.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Image.asset(
                        'assets/images/social/icons/google.png',
                        width: logoDimension,
                        height: logoDimension,
                      ),
                    ),
                    SizedBox(width: 30,),
                    Container(
                      height: logoDimension + 40.0,
                      width: logoDimension + 40.0,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Image.asset(
                        'assets/images/social/icons/apple.png',
                        width: logoDimension,
                        height: logoDimension,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        TapSound.playTapSound();
                        if(mounted) {
                          Navigator.pushNamed(context, '/auth/signup');
                        }
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}
