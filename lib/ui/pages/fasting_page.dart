import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class FastingPage extends StatefulWidget {
  const FastingPage({super.key});

  @override
  State<FastingPage> createState() => _FastingPageState();
}

class _FastingPageState extends State<FastingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ro'za kitobi"),
        centerTitle: true,
      ),
      body: PdfView(
        controller: PdfController(
          document: PdfDocument.openAsset('assets/files/ruza.pdf'),
        ),
      ),
    );
  }
}
