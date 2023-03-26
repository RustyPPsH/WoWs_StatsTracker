import 'package:flutter/material.dart';
import 'package:helloworld/about_page.dart';
import 'package:helloworld/player_stats_page.dart';
import 'package:helloworld/search_player.dart';

//Custom Color
Map<int, Color> color = {
  50: const Color.fromRGBO(0, 128, 128, 1),
  100: const Color.fromRGBO(0, 128, 128, .9),
  200: const Color.fromRGBO(0, 128, 128, .8),
  300: const Color.fromRGBO(0, 128, 128, .7),
  400: const Color.fromRGBO(0, 128, 128, .6),
  500: const Color.fromRGBO(0, 128, 128, .5),
  600: const Color.fromRGBO(0, 128, 128, .4),
  700: const Color.fromRGBO(0, 128, 128, .3),
  800: const Color.fromRGBO(0, 128, 128, .2),
  900: const Color.fromRGBO(0, 128, 128, .1),
};

MaterialColor colorCustom = MaterialColor(0xff009688, color);

void main() => runApp(MyApp());

//RootPage
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World of Warships Stats Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [SearchPlayer(), AboutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WoWs Stats Tracker'),
      ),
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.search), label: 'Search Player'),
          NavigationDestination(
              icon: Icon(Icons.question_mark), label: 'About'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
