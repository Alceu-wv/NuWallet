import 'package:flutter/material.dart';

class FormTest extends StatefulWidget {
  const FormTest({super.key});

  @override
  State<FormTest> createState() => _FormTestState();
}

// @override
// State<FormTest> createState() {
//   return _FormTestState();
// }
// }

class _FormTestState extends State<FormTest> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      print(controller.text);
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TEste"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              AnimatedBuilder(
                  animation: controller,
                  builder: (_, __) {
                    return Text(controller.text);
                  }
                ),
            ],
          ),
        )
      );
  }
}
