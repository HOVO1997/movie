import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/movie_list/movie_list_widget.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  int _currentIndex = 0;

  void setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Text('News'),
          MovieListWidget(),
          Text('Tv'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Movie',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Tv',
            ),
          ],
          onTap: setIndex),
    );
  }
}
