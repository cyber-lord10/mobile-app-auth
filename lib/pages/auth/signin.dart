import 'package:flutter/material.dart';
import 'package:signup/components/auth/sigin/app_bar.dart';
import '/components/auth/sigin/body.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: SignInAppBar(),
      body: SignInBody(),
    );
  }
}
