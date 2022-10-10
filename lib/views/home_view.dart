import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  Widget _firstLayer(context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.175,
          color: const Color(0xFF595FF7),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF2A253F)),
                  child: const Text("Escolher Conta"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xFF2A253F),
          ),
        )
      ],
    );
  }

  Widget _cardInOut(context, {bool? red}) {
    Color getColor() {
      if (red == null) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }

    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: 300,
            height: 200,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                          height: 45,
                          child:
                              Text(textAlign: TextAlign.justify, "Entradas")),
                      Icon(
                        Icons.arrow_circle_up,
                        size: 50,
                        color: getColor(),
                      )
                    ]),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "R\$ 17.400,00",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _cardStatement(context, red) {
    Color _getColor(red) {
      if (red == false) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    }

    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 100,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                          height: 25,
                          child: Text(
                              textAlign: TextAlign.justify,
                              "Desenvolvimento de site")),
                    ]),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "R\$ 17.400,00",
                        style: TextStyle(color: _getColor(red), fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Casa",
                      style: TextStyle(color: Colors.black38),
                    ),
                    Text(
                      "27/03/2021",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("NuWallet"),
          backgroundColor: const Color(0xFF595FF7),
          elevation: 0,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.menu),
                )),
          ],
        ),
        body: Stack(
          children: [
            _firstLayer(context),
            Padding(
              padding: const EdgeInsets.only(top: 76.0),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      const SizedBox(
                        width: 30,
                      ),
                      _cardInOut(context, red: true),
                      _cardInOut(context),
                      _cardInOut(context, red: true),
                      _cardInOut(context),
                      _cardInOut(context),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Listagem (todos os bancos)",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child:
                          ListView(scrollDirection: Axis.vertical, children: [
                        SizedBox(
                          height: 30,
                        ),
                        _cardStatement(context, true),
                        _cardStatement(context, false),
                        _cardStatement(context, true),
                        _cardStatement(context, true),
                        _cardStatement(context, false),
                        _cardStatement(context, false)
                      ]),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

// Card(
//     elevation: 10,
//     color: Colors.amber,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: const SizedBox(
//       width: 300,
//       height: 200,
//       child:
//           Center(child: Text('YoYo', style: TextStyle(fontSize: 50))),
//     ))
