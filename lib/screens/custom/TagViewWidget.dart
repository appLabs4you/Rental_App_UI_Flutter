import 'package:flutter/material.dart';

enum ClipType {arc, traingle }

class TagViewWidget extends StatelessWidget {
  Widget child;
  ClipType clipType;
  TagViewWidget({this.child,  this.clipType = ClipType.traingle});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TagViewClipper(clipType),
      child: child,
    );
  }
}

class TagViewClipper extends CustomClipper<Path> {
  ClipType clipType;
  TagViewClipper(this.clipType);

  @override
  Path getClip(Size size) {
    Path path = Path();
    if (clipType == ClipType.traingle)
    createTriangle(size, path);
    if (clipType == ClipType.arc){
      createArc(size, path);
    }

    path.close();
    return path;
  }

  createTriangle(Size size, Path path) {
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.75,  size.height/2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
  }

  createArc(Size size, Path path){ ;
  path.lineTo(0,
      150);
  path.quadraticBezierTo(
      size.
      width / 2, 250, size.width, 150);
  path.lineTo(size.
  width, 0);
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
