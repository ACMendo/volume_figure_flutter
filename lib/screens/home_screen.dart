
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final largo = TextEditingController();
  final ancho = TextEditingController();
  final alto = TextEditingController();
  double volumen = 0; 

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 20);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Volumen de un Rectángulo'),
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // const Text('Cuadrado', style: fontSize),
            TextField(
              controller: largo,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Largo',
                hintText: 'Largo',
                suffix: IconButton(
                  onPressed: largo.clear, icon: const Icon(Icons.close))
                
              ),
            ),
          
            TextField(
              controller: ancho,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ancho',
                hintText: 'Ancho',
                suffix: IconButton(
                  onPressed: ancho.clear, icon: const Icon(Icons.close))
              ),
            ),
            TextField(
              controller: alto,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Alto',
                hintText: 'Alto',
                suffix: IconButton(
                  onPressed: alto.clear, icon: const Icon(Icons.close))
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            const Text('Resultado', style: fontSize), 
            Text('$volumen', style: fontSize)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.calculate),
        onPressed: () {
          volumen = double.parse(largo.text) * double.parse(ancho.text) * double.parse(alto.text);
          setState(() {
          });
        },
      ),
    );
  }
}