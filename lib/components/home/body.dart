import 'package:flutter/material.dart';
import '/components/general/large_btn.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.lock_person_rounded,
                size: 100,
                color: Colors.black87,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                ', get authenticated',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  // fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              LargeBtn(
                icon: Icons.person_add_outlined,
                text: 'Sign Up',
                bgColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
                anchor: '/auth/signup',
              ),
              SizedBox(
                height: 15,
              ),
              LargeBtn(
                icon: Icons.login_outlined,
                text: 'Sign In',
                bgColor: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
                anchor: '/auth/signin',
              ),
              SizedBox(
                height: 25,
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}
