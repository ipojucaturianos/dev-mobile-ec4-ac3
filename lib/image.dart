import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  ImagePage({Key? key}) : super(key: key);
  final description = '''
       O n-ésimo termo da sequência de Fibonacci pode ser determinado utilizando a relação de recorrência de segunda ordem, na qual uma equação do tipo an = s * an-1 + r * an-2 é escrita como an = c1 * (r1 ^ n) + c2 * (r2 ^ n).
       A principal vantagem é poder calcular certo termo sem precisar conhecer os termos que o antecedem.
  ''';

  final srcImage = 'http://farm1.staticflickr.com/6/11157043_4aabe5a627_o.jpg';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(srcImage),
            Text('Fibonacci Equation', style: TextStyle(fontSize: 25),),
            Padding(padding: EdgeInsets.all(20), child: Text(description, style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,),),
          ]
      ),
    );
  }

}
