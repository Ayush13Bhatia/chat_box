import 'package:chat_box/home_page.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Page'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisExtent: 110,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(HomePage.routeName);
              },
              child: Card(
                child: ClipRRect(
                  child: GridTile(
                    footer: GridTileBar(
                      title: const Text('    '),
                      trailing: const Icon(
                        Icons.explore,
                        color: Colors.black,
                      ),
                      leading: SizedBox(
                        child: Row(
                          children: const [
                            Icon(
                              Icons.favorite,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.chat,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                    ),
                    child: Image.network(
                      'https://raw.githubusercontent.com/Ayush13Bhatia/SpanishAudioNumbers/main/images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
