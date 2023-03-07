import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class Movie {
  final int id;
  final String image;
  final String name;
  final String date;
  final String description;

  Movie(
      {required this.id,
      required this.image,
      required this.name,
      required this.date,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({super.key});

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final List<Movie> _movieList = [
    Movie(
        id: 0,
        image: AppImages.movieImage,
        name: 'Mortal Kombat',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
    Movie(
        id: 1,
        image: AppImages.movieImage,
        name: 'Mortal Kombat 2',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
    Movie(
        id: 2,
        image: AppImages.movieImage,
        name: 'Mortal Kombat 3',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
    Movie(
        id: 3,
        image: AppImages.movieImage,
        name: 'Mortal Kombat 4',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
    Movie(
        id: 4,
        image: AppImages.movieImage,
        name: 'Mortal Kombat 5',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
    Movie(
        id: 5,
        image: AppImages.movieImage,
        name: 'Mortal Kombat 6',
        date: '19 October 2022',
        description:
            'Nearly 5,000 years after he was bestowed with unique form of justice on the modern world.'),
  ];
  var _filteredMovieList = <Movie>[];

  final _searchController = TextEditingController();

  void onSearch() {
    final searchValue = _searchController.text.toLowerCase();
    if (searchValue.isNotEmpty) {
      _filteredMovieList = _movieList
          .where(
              (Movie movie) => movie.name.toLowerCase().contains(searchValue))
          .toList();
    } else {
      _filteredMovieList = _movieList;
    }
    setState(() {});
  }

  @override
  void initState() {
    _filteredMovieList = _movieList;
    _searchController.addListener(onSearch);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.only(top: 80),
          itemCount: _filteredMovieList.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovieList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          )
                        ]),
                    child: Row(
                      children: [
                        const Image(image: AssetImage(AppImages.movieImage)),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(
                                  movie.date,
                                  style: const TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  movie.description,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        final navigation = Navigator.of(context);
                        navigation.pushNamed(
                          '/main_page/movie',
                          arguments: index,
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Type film name ...',
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white.withAlpha(235)),
          ),
        )
      ],
    );
  }
}
