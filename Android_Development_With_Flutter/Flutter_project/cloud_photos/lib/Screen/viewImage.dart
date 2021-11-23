import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class ViewImage extends StatefulWidget {
  final String image;
  const ViewImage({Key? key, required this.image}) : super(key: key);

  @override
  _ViewImageState createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        transitionOnUserGestures: true,
        tag: widget.image,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
