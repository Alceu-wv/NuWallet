import 'package:flutter/material.dart';
import 'package:nu_wallet/widgets/block_button.dart';

class NewBankAcount extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  NewBankAcount({super.key});

  Widget form(BuildContext context) {
    return Form(
      key: _form,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Banco', filled: true, fillColor: Colors.white),
              validator: (value) {
                if (value == null || value.length < 3) {
                  return "Insira um banco válido";
                }
              },
              onSaved: (value) => _formData['bank'] = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Número', filled: true, fillColor: Colors.white),
              validator: (value) {
                if (value == null || value.length < 4 || !value.contains('@')) {
                  return "Insira um número de conta válido";
                }
              },
              onSaved: (value) => _formData['acount_number'] = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Senha', filled: true, fillColor: Colors.white),
              validator: (value) {
                value ??= '';
              },
              onSaved: (value) => _formData['password'] = value!,
            ),
            BlockButton(label: 'Salvar', onPressed: () => debugPrint('Received click'))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("NuWallet"),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Cadastro de novo banco:',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Image.asset("assets/images/nubank.png"),
                  form(context)
                ]),
          ),
        ));
  }
}
