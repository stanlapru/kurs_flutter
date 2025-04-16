import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Домашняя"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('/auth');
                });
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Заголовок",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  const Text(
                      "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,"),
                  Row(children: [
                    TextButton(onPressed: (){}, child: const Text("Кнопка 1")),
                    const Spacer(),
                    TextButton(onPressed: (){}, child: const Text("Кнопка 2")),
                  ],),
                  const TextField(
                    
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
