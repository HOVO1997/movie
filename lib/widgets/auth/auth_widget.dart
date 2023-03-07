import 'package:flutter/material.dart';

import '../main_page/main_page_widget.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: ListView(
        children: const [_HeaderWidget(), _FormWidget(), _FooterWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Login to your account',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'In order to use the editing and rating capabilities of TMDB,'
            ' as well as get personal recommendations you will need to login'
            'to your account. If you do not have an account, registering for'
            'an account is free and simple.',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'If you signed up but didnt get your verification email click here to have it resent.',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  String errorText = '';
  final _userNameFormControl = TextEditingController(text: 'admin');
  final _userPasswordFormControl = TextEditingController(text: '1234');

  void _login() {
    final name = _userNameFormControl.text;
    final password = _userPasswordFormControl.text;

    if (name == 'admin' && password == '1234') {
      final navigation = Navigator.of(context);
      navigation.pushNamed('/main_page');
      return;
    }
    errorText = 'Wrong user name or password';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 17);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errorText != '')
            Text(
              errorText,
              style: const TextStyle(color: Colors.red, fontSize: 17),
            ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'User Name',
            style: textStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              isDense: true,
            ),
            controller: _userNameFormControl,
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Password',
            style: textStyle,
          ),
          const SizedBox(
            height: 7,
          ),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              isDense: true,
            ),
            obscureText: true,
            controller: _userPasswordFormControl,
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              TextButton(
                onPressed: _login,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(1, 180, 228, 1),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                child: const Text('Login'),
              ),
              const SizedBox(
                width: 25,
              ),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(1, 180, 228, 1)),
                ),
                child: const Text('Reset password'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _FooterWidget extends StatelessWidget {
  const _FooterWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(3, 37, 65, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                foregroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(3, 37, 65, 1),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 15)),
              ),
              child: const Text('JOIN THE COMMUNITY'),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'THE BASICS',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'About TMDB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Support Forums',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'API',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'System Status',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'THE BASICS',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'About TMDB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Support Forums',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'API',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'System Status',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'THE BASICS',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'About TMDB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'Support Forums',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'API',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const Text(
              'System Status',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Center(
              child: Text(
                'Created at 2022',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
