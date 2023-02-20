import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 198, 43, 77),
          title: const Text('Mi app'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
          ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.supervisor_account,
                            size: 50,
                            color: Color.fromARGB(255, 198, 43, 77),
                          ),
                        ),
                      ),
                      const Text('Doctor', style: TextStyle(fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.local_hospital,
                            size: 50,
                            color: Color.fromARGB(255, 224, 106, 206),
                          ),
                        ),
                      ),
                      const Text('Farmacia', style: TextStyle(fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.accessibility,
                            size: 50,
                            color: Color.fromARGB(255, 125, 185, 234),
                          ),
                        ),
                      ),
                      const Text('Paciente', style: TextStyle(fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 205, 213, 219),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.view_comfy_alt,
                            size: 50,
                            color: Color.fromARGB(255, 140, 173, 69),
                          ),
                        ),
                      ),
                      const Text(
                        'Hospital',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(200, 198, 43, 77),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '¿Quieres pagar más rapido?',
                          style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 125, 185, 234)),
                        ),
                        Text('Agrega un método de pago')
                      ],
                    ),
                    const Icon(Icons.add_card)
                  ],
                ),
              )
            ],
          ),
        )

        /* Center(
        child: Column(
          /* mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, */
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Bienvenido',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Anton'),
                textAlign: TextAlign.center,
              ),
            ),           
            const Text('bbb'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Texto1'), 
                Text('Text 2')
              ],
            ),
          ],
        ),
      ), */
        );
  }
}
