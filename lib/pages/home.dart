import 'package:flutter/material.dart';
import '/components/home/appbar.dart';
import '/components/home/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
