import 'package:flutter/material.dart';

class ChooseLocationState extends StatefulWidget {
  const ChooseLocationState({super.key});

  @override
  State<ChooseLocationState> createState() => _ChooseLocationStateState();
}

class _ChooseLocationStateState extends State<ChooseLocationState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text('Choose Location')),
    );
  }
}
