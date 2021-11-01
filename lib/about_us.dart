import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({Key? key}) : super(key: key);
  final developers = [
    'Ellen Cristina Marques - 1900000',
    'Filipe Verrone de Lima - 1903580',
    'Gustavo Yudi Carvalho - 1900000',
    'João Severino Godoi - 1900000',
    'Leonardo Vargas - 1900000',
    'Vinicius Tirelli - 1900000',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            Text('About Us - Developers', style: TextStyle(fontSize: 25),),
            for (var i = 0; i < developers.length; i++) Text(developers[i], style: TextStyle(fontSize: 15),),
          ]
      ),
    );
  }

}
