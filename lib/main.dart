import 'package:cookbook3/widgets/animation/animate_container.dart';
import 'package:cookbook3/widgets/animation/animate_route.dart';
import 'package:cookbook3/widgets/animation/animate_widget.dart';
import 'package:cookbook3/widgets/animation/fade_widget.dart';
import 'package:cookbook3/widgets/effects/chat_bubbles.dart';
import 'package:cookbook3/widgets/effects/download_button.dart';
import 'package:cookbook3/widgets/effects/drag_element.dart';
import 'package:cookbook3/widgets/effects/expandable_fab.dart';
import 'package:cookbook3/widgets/effects/filter_caroucel.dart';
import 'package:cookbook3/widgets/effects/loading_effect.dart';
import 'package:cookbook3/widgets/effects/menu_animation.dart';
import 'package:cookbook3/widgets/effects/scrolling_parallax.dart';
import 'package:cookbook3/widgets/effects/typing_indicator.dart';
import 'package:cookbook3/widgets/gestures/app_material_touch.dart';
import 'package:cookbook3/widgets/gestures/handle_taps.dart';
import 'package:cookbook3/widgets/gestures/implement_swiipe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _widgetOptions = [
    const Inicio(),
    const AnimateTransPage1(),
    const PhysicsCardDragDemo(),
    const AnimatedContainerApp(),
    const OpasityWidget(),
    const ExampleCupertinoDownloadButton(),
    const ExampleInstagramFilterSelection(),
    const ScrollingParallaxEffect(),
    const ExampleUiLoadingAnimation(),
    const ExampleStaggeredAnimations(),
    const ExampleIsTyping(),
    const ExampleExpandableFab(),
    const ExampleGradientBubbles(),
    const ExampleDragAndDrop(),
    const MaterialTouch(),
    const HandleTap(),
    const SwipeImple()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CookBook 3'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage("https://www.techupdates.net/wp-content/uploads/2021/02/Flutter.png",), 
                  fit: BoxFit.cover
                  )
              ),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Inicio"),
              onTap: () {
                setState(() {
                  _selectedIndex=0;
                });
                Navigator.pop(context);
              },
            ),
            const ListTile(
                title: Text("Animation", style: TextStyle(fontWeight: FontWeight.bold)),
                enabled: false,
              ),
            ListTile(
              leading: const Icon(Icons.animation),
              title: const Text('Animate a page route transition'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.move_up_rounded),
              title: const Text("Animate a widget using a physics simulation"),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.crop_din_sharp),
              title: const Text("Animate the properties of a container"),
              onTap: () {
                setState(() {
                  _selectedIndex=3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.opacity),
              title: const Text("Fade a widget in and out"),
              onTap: () {
                setState(() {
                  _selectedIndex=4;
                });
                Navigator.pop(context);
              },
            ),
            const ListTile(
              title: Text("Effects", style: TextStyle(fontWeight: FontWeight.bold)),
              enabled: false,
            ),
            ListTile(
              leading: const Icon(Icons.download),
              title: const Text("Create a download button"),
              onTap: () {
                setState(() {
                  _selectedIndex=5;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.filter_hdr_outlined),
              title: const Text("Create a photo filter carousel"),
              onTap: () {
                setState(() {
                  _selectedIndex=6;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.screenshot_outlined),
              title: const Text("Create a scrolling parallax effect"),
              onTap: () {
                setState(() {
                  _selectedIndex=7;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_timeline_rounded),
              title: const Text("Create a shimmer loading effect"),
              onTap: () {
                setState(() {
                  _selectedIndex=8;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_open_outlined),
              title: const Text("Create a staggered menu animation"),
              onTap: () {
                setState(() {
                  _selectedIndex=9;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.type_specimen_outlined),
              title: const Text("Create a typing indicator"),
              onTap: () {
                setState(() {
                  _selectedIndex=10;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mediation_rounded),
              title: const Text("Create an expandable FAB"),
              onTap: () {
                setState(() {
                  _selectedIndex=11;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text("Create gradient chat bubbles"),
              onTap: () {
                setState(() {
                  _selectedIndex=12;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.food_bank_outlined),
              title: const Text("Drag a UI element"),
              onTap: () {
                setState(() {
                  _selectedIndex=13;
                });
                Navigator.pop(context);
              },
            ),
            const ListTile(
                title: Text("Gestures", style: TextStyle(fontWeight: FontWeight.bold)),
                enabled: false,
              ),
            ListTile(
              leading: const Icon(Icons.tab_rounded),
              title: const Text("Add Material touch ripples"),
              onTap: () {
                setState(() {
                  _selectedIndex=14;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab_unselected_rounded),
              title: const Text("Handle taps"),
              onTap: () {
                setState(() {
                  _selectedIndex=15;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.list_alt),
              title: const Text("Implement swipe to dismiss"),
              onTap: () {
                setState(() {
                  _selectedIndex=16;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


