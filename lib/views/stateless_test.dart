import 'package:flutter/material.dart';

class YellowBird extends StatefulWidget {
  const YellowBird({super.key});

  @override
  State<YellowBird> createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFFE306),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Type something',
              ),
            ),
            AnimatedBuilder(
                animation: controller,
                builder: (_, __) {
                  return Text(controller.text);
                }),
          ],
        ),
      ),
    );
  }
}
