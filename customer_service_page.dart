import 'package:flutter/material.dart';

class CustomerServicePage extends StatelessWidget {
  const CustomerServicePage({super.key});

  static const Color mainRed = Color(0xFFA20F14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: mainRed,
        centerTitle: true,
        title: const Text("Salahny", style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Column(
        children: [

          const Padding(
            padding: EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Customer Service",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: const [

                ChatBubble(
                  isUser: false,
                  text: "Hi ............ Thanks For Contacting Salahny.",
                ),

                ChatBubble(
                  isUser: false,
                  text: "How Can I Help you?",
                ),

                ChatBubble(
                  isUser: true,
                  text: "",
                ),

                ChatBubble(
                  isUser: false,
                  text: "Hi ............ Thanks For Contacting Salahny.",
                ),

                ChatBubble(
                  isUser: true,
                  text: "",
                ),
              ],
            ),
          ),

          // Input
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Row(
              children: [

                const Icon(Icons.camera_alt),

                const SizedBox(width: 10),

                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isUser;
  final String text;

  const ChatBubble({
    super.key,
    required this.isUser,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [

        if (!isUser)
          const Icon(Icons.android, size: 30),

        const SizedBox(width: 5),

        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(12),
          constraints: const BoxConstraints(maxWidth: 250),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(text),
        ),

        const SizedBox(width: 5),

        if (isUser)
          const Icon(Icons.person, size: 30),
      ],
    );
  }
}