import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsCardDragDemo extends StatelessWidget {
  const PhysicsCardDragDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggabbleCard(
      child: ClipOval(
        child: Image.network("https://images3.memedroid.com/images/UPLOADED35/5e1a5a7715799.jpeg", width: 140, height: 140,)
        ),
    );
  }
}

class DraggabbleCard extends StatefulWidget {
  const DraggabbleCard({required this.child,super.key});

  final Widget child;

  @override
  State<DraggabbleCard> createState() => _DraggabbleCardState();
}

class _DraggabbleCardState extends State<DraggabbleCard> 
with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  Alignment _dragAlignment = Alignment.center;

  late Animation<Alignment> _animation;

  void _runAnimation(Offset pixelsPerSecond, Size size){
    _animation = _controller.drive(
      AlignmentTween(
        begin: _dragAlignment,
        end: Alignment.center,
      )
    );
    final unitsPerSecondX= pixelsPerSecond.dx/size.width;
    final unitsPerSecondY= pixelsPerSecond.dx/size.height;
    final unitsPerSecond=Offset(unitsPerSecondX, unitsPerSecondY);
    final unitVelocity=unitsPerSecond.distance;

    const  spring = SpringDescription(
      mass: 30,
      stiffness: 1,
      damping: 1,
    );

    final simulation=SpringSimulation(spring, 0, 1, -unitVelocity);

    _controller.animateWith(simulation);
  }

  @override
  void initState(){
    super.initState();
    _controller=AnimationController(vsync: this);

    _controller.addListener(() {
      setState(() {
        _dragAlignment=_animation.value;
      });
    });
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onPanDown: (details) {
        _controller.stop();
      },
      onPanUpdate: (details) {
        setState(() {
          _dragAlignment+=Alignment(
            details.delta.dx/(size.width/2),
            details.delta.dy/(size.height/2)
          );
        });
      },
      onPanEnd: (details) {
        _runAnimation(details.velocity.pixelsPerSecond, size);
      },
      child: Align(
        alignment: _dragAlignment,
        child: ClipOval(
          child: Card(
            child: widget.child,
          ),
        ),
      ),
    );
  }

}