import 'package:flutter/material.dart';
import 'oven_page.dart';

class DashboardPage extends StatelessWidget{
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 8.0,
          children: List.generate(3, (index) => Card(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OvenPage()));
              },
              child: Center(
                child: Text('Oven ${index + 1}', style: Theme.of(context).textTheme.headline5,),
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            elevation: 0,
          ),),
        ),
      ),
    );
  }
}