import 'package:flutter/material.dart';
import 'package:nu_wallet/views/home_view.dart';
import 'package:nu_wallet/views/login_view.dart';
import 'package:nu_wallet/views/new_bank_acount_view.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NuWallet',
      theme: theme(),
      // home: NewBankAcount(),
      home: const LoginView(title: "title"),
      // home: HomeView(),
    );
  }
}
