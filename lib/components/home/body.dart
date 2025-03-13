import 'package:flutter/material.dart';
import '/components/general/large_btn.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            LargeBtn(
              icon: Icons.person_outline,
              text: 'Sign Up',
              bgColor: Colors.deepPurpleAccent,
              textColor: Colors.white,
              anchor: '/auth/signup',
            ),
            SizedBox(height: 10,),
            LargeBtn(
              icon: Icons.login_outlined,
              text: 'Sign In',
              bgColor: Colors.deepPurpleAccent,
              textColor: Colors.white,
              anchor: '/auth/signin',
            )

          ],
        ),
      ),
    );
  }
}
