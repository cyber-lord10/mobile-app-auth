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
            Icon(
              Icons.lock_person_rounded,
              size: 140,
              color: Colors.black87,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 26,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    ', get authenticated',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                      fontSize: 26,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            LargeBtn(
              icon: Icons.person_add_outlined,
              text: 'Sign Up',
              bgColor: Colors.black, //Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
              anchor: '/auth/signup',
            ),
            SizedBox(
              height: 15,
            ),
            LargeBtn(
              icon: Icons.login_outlined,
              text: 'Sign In',
              bgColor: Colors.black, //Theme.of(context).colorScheme.primary,
              textColor: Colors.white,
              anchor: '/auth/signin',
            ),
          ],
        ),
      ),
    );
  }
}
