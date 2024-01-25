import 'package:flutter/material.dart';


class AnimateTransPage1 extends StatelessWidget {
  const AnimateTransPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text("Lets Fuking GOO!"),
        ),
      ),
    );
  }
}

Route _createRoute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child){
      const begin=Offset(0.0, 1.0);
      const end= Offset.zero;
      const curve=Curves.ease;
      var tween=Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    }
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 2"),
      ),
      body: const Center(
        child: Text("Pagina 2"),
      ),
    );
  }
}