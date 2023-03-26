import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: const [
        Text('', textAlign: TextAlign.center),
        Text('', textAlign: TextAlign.center),
        Text('', textAlign: TextAlign.center),
        Text('Created by:',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text('', textAlign: TextAlign.center),
        Text('Rafael Sonoki',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text('Erick Vieira',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text('Guilherme Hoeller',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text('', textAlign: TextAlign.center),
        Text(
            'This app was developed for academic exercise purposes, at UNISUL University, under the surveillance of Professor Saulo Zambiasi',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      ],
    ));
  }
}
