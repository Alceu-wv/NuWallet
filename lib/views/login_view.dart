import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, required this.title});

  final String title;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final Map<String, String> _formData = {};

  Widget _loginButtons() {
    Widget _button(providerName, img) {
      return SizedBox(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.7,
        child: ElevatedButton(
          onPressed: () {
            debugPrint('Login $providerName Received click');
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white)),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(padding: const EdgeInsets.all(4.0), child: img)),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Login $providerName',
                    style: const TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _button("Google", Image.asset("assets/icons/google_icon.png")),
        const SizedBox(
          height: 12,
        ),
        _button("Apple", Image.asset("assets/icons/apple_icon.png")),
      ],
    );
  }

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
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SvgPicture.asset("assets/images/login.svg"),
              Container(
                  color: const Color(0xFF595FF7),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.31,
                  child: _loginButtons()),
            ],
          )),
    );
  }
}
