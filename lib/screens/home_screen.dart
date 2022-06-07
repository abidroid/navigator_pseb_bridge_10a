import 'package:flutter/material.dart';
import 'package:navigator_pseb_bridge_10a/screens/second_screen.dart';
import 'package:navigator_pseb_bridge_10a/screens/third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SecondScreen(name: nameController.text);
                }));
              }, child: const Text('Go to 2nd Screen')),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return ThirdScreen(name: nameController.text);
                }));
              }, child: const Text('Go to 3rd Screen')),

            ],
          ),
        ),
      ),
    );
  }
}
