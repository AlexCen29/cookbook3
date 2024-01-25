import 'package:flutter/material.dart';

class OpasityWidget extends StatefulWidget {
  const OpasityWidget({super.key});


  @override
  State<OpasityWidget> createState() => _OpasityWidgetState();
}

class _OpasityWidgetState extends State<OpasityWidget> {

  bool _visible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: AnimatedOpacity(
          opacity: _visible?1.0:0.0,
          duration: const Duration(milliseconds: 500),
      
          child: Container(
            width: 200,
            height: 200,
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Image.network("https://i.makeagif.com/media/3-23-2021/SBx1Qf.gif", 
            fit:BoxFit.cover),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible= !_visible;
          });
        },
        tooltip: "Magia",
        child: const Icon(Icons.flip),
      ),
    );
  }
}