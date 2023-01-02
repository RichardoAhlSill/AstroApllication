import 'package:flutter/material.dart';
import 'package:astroapp/domain/nasa.dart';

class CardNasa extends StatefulWidget {
  final Nasa nasa;

  const CardNasa({
    Key? key,
    required this.nasa,
  }) : super(key: key);

  @override
  _CardNasaState createState() => _CardNasaState();
}

class _CardNasaState extends State<CardNasa> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    Text(
                      widget.nasa.title,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.nasa.hdurl),
        ),
      ],
    );
  }
}