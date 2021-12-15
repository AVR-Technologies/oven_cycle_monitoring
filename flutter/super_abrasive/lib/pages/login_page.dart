import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Flexible(
            flex: 2,
            child: Center(
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Text('User name', style: Theme.of(context).textTheme.bodyText1,),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Text('Password', style: Theme.of(context).textTheme.bodyText1,),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: TextField(
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              enableSuggestions: false,
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const DashboardPage()));

              },
            ),
          ),

          const Spacer( flex: 3, ),
        ],
      ),
    );
  }
}