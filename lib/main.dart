import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_page/main_page_widget.dart';

import 'widgets/movie_details/movie_datails_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(3, 37, 65, 1),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(3, 37, 65, 1),
              selectedItemColor: Colors.white),
          unselectedWidgetColor: Colors.grey),
      routes: {
        '/': (context) => const AuthWidget(),
        '/main_page': (context) => const MainPageWidget(),
        '/main_page/movie': (context) {
          final movieId = ModalRoute.of(context)?.settings.arguments;
          if (movieId is int) {
            return MovieDetailsWidget(
              movieId: movieId,
            );
          }
          return const Scaffold(
            body: Center(child: Text('Not Found 404')),
          );
        }
      },
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('Not Found 404')),
          );
        });
      },
    );
  }
}
