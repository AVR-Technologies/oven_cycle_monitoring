import 'package:flutter/material.dart';

class OvenPage extends StatelessWidget{
  const OvenPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oven 1'),
        actions: [
          TextButton(
            child: const Text('Graph'),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              title: const Text('Cycle started at: '),
              trailing: const Text('dd/mm/yy hh:mm', style: TextStyle(fontSize: 20,),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: ListTile(
              title: const Text('Time remaining at: '),
              trailing: const Text('hh:mm', style: TextStyle(fontSize: 20,),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    color: Colors.grey,
                  )
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ListTile(
                  title: Text('Temperature'),
                ),
                Divider(thickness: 1, height: 1, color: Colors.grey,),
                ListTile(
                  dense: true,
                  title: Text('T1: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30°C', style: TextStyle(fontSize: 24,),),
                ),
                Divider(thickness: 1, height: 1,),
                ListTile(
                  dense: true,
                  title: Text('T2: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30°C', style: TextStyle(fontSize: 24,),),
                ),
                Divider(thickness: 1, height: 1,),
                ListTile(
                  dense: true,
                  title: Text('T3: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30°C', style: TextStyle(fontSize: 24,),),
                ),
                Divider(thickness: 1, height: 1,),
                ListTile(
                  dense: true,
                  title: Text('T4: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30°C', style: TextStyle(fontSize: 24,),),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  title: Text('Current'),
                ),
                Divider(thickness: 1, height: 1, color: Colors.grey.shade400,),
                const ListTile(
                  dense: true,
                  title: Text('I1: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30A', style: TextStyle(fontSize: 24,),),
                ),
                const Divider(thickness: 1, height: 1,),
                const ListTile(
                  dense: true,
                  title: Text('I2: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30A', style: TextStyle(fontSize: 24,),),
                ),
                const Divider(thickness: 1, height: 1,),
                const ListTile(
                  dense: true,
                  title: Text('I3: ', style: TextStyle(fontSize: 16,),),
                  trailing: Text('30A', style: TextStyle(fontSize: 24,),),
                ),
                const Divider(thickness: 1, height: 1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
