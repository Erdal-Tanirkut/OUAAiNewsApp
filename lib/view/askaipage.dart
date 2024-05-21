import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class asktoAI extends StatefulWidget {
  final String content;
  const asktoAI({super.key, required this.content});


  @override
  State<asktoAI> createState() => _asktoAIState();
}

class _asktoAIState extends State<asktoAI> {
  String _generatedContent = "Generating content...";

  @override
  void initState() {
    super.initState();
    _generateContent(widget.content);
  }

  void _generateContent(String content) {
    final gemini = Gemini.instance;
    gemini.streamGenerateContent('Bu haber içeriği doğru mu,tek cümlede açıkla ${widget.content}')
        .listen((value) {
      setState(() {
        _generatedContent = value.output!;
      });
    }).onError((e) {
      log('streamGenerateContent exception', error: e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Gemini Demo'),
        ),
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  padding: EdgeInsets.all(8), // Tüm kenarlara padding uygula
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red), // Kırmızı renkte bir border ekle
                    borderRadius:BorderRadius.circular(10),
                  ),
                  child: Text(_generatedContent)),
            ),
            ),
        );}
}
