import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Box'),
      ),
      body: GestureDetector(
        onTap: () {},
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Card(
              child: ListTile(
                leading: Image(
                    image: NetworkImage(
                  'https://raw.githubusercontent.com/Ayush13Bhatia/SpanishAudioNumbers/main/images/logo.png',
                )),
                title: Text("Hi! There"),
                subtitle: Text("Hey! Everyone"),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat),
        onPressed: () {},
      ),
    );
  }
}
