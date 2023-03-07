import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({
    super.key,
    required this.movieId,
  });

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const Image(image: AssetImage(AppImages.detailBackground)),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child:
                    const Image(image: AssetImage(AppImages.detailBackground)),
              )
            ],
          )
        ],
      ),
    );
  }
}
