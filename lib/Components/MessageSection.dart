import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:OSF/Components/ChatPage.dart';

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);
  final List messages = [
    {
      'image': 'images/avatar/zoro.jpeg',
      'from': 'Hassan',
      'message': 'Hello! how are you',
      'envoieMessage': '16:35',
    },
    {
      'image': 'images/avatar/Nami_et_son_argent.png',
      'from': 'Sandy',
      'message': 'Arrête de fumer !!!!!!!!!!!',
      'envoieMessage': '07:31',
    },
    {
      'image': 'images/avatar/luffy.jpg',
      'from': 'Yannis',
      'message': 'CC jeune homme de Bouillante',
      'envoieMessage': '06:31',
    },
    {
      'image': 'images/avatar/marco.png',
      'from': 'Kara',
      'message': 'Les spoils sont sortis',
      'envoieMessage': '22:22',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatPage(),
                ),
              );
            },
            splashColor: Colors.green,
            child: Container(
              padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 23),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(message['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    message['from'],
                                    style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Wrap(children: [
                                    Text(
                                      message['message'],
                                      style: GoogleFonts.inter(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(message['envoieMessage']),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
