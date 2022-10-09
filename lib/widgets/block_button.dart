import 'package:flutter/material.dart';

class BlockButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const BlockButton({Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 41, 189, 56)),
          onPressed: onPressed,
          child: const Text(
            'Salvar',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
