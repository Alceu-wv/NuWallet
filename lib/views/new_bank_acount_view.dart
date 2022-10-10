import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:nu_wallet/widgets/block_button.dart';

class NewBankAcount extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  NewBankAcount({super.key});

  Widget _input(inputName) {
    return Column(
      children: [
        Container(
          height: 35,
          alignment: Alignment.topLeft,
          child: Text(
            " " + inputName + ":",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        SizedBox(
          height: 45,
          child: TextFormField(
            decoration: InputDecoration(
                labelText: inputName, filled: true, fillColor: Colors.white),
            validator: (value) {
              if (value == null || value.length < 3) {
                return "Insira um banco válido";
              }
            },
            onSaved: (value) => _formData['bank'] = value!,
          ),
        ),
      ],
    );
  }

  Widget form(BuildContext context) {
    return Form(
      key: _form,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _input('Banco'),
            _input('Número da conta'),
            _input('Senha'),
            SizedBox(
              height: 0,
            ),
            BlockButton(
                label: 'Salvar', onPressed: () => debugPrint('Received click'))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF595FF7),
          title: const Text("NuWallet"),
        ),
        body: Center(
          child: Container(
            color: const Color(0xFF2A253F),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Cadastro de novo banco:',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SvgPicture.asset(
                      "assets/images/new_bank.svg",
                      width: 200,
                      height: 200,
                    ),
                    form(context)
                  ]),
            ),
          ),
        ));
  }
}
