import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, String> _formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A253F),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              const Text(
                "Nu Wallet",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 200,
                child: Image.asset("assets/images/nubank.png"),
              ),
              Container(
                color: const Color(0xFF595FF7),
                width: double.infinity,
                height: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          debugPrint('Login Google Received click');
                        },
                        label: const Text('Login Google'),
                        icon: const Icon(Icons.account_circle_outlined),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          debugPrint('Login Apple Received click');
                        },
                        label: const Text('Login Apple'),
                        icon: const Icon(Icons.account_circle_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
