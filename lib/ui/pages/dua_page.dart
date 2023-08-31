import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class DuaPage extends StatefulWidget {
  const DuaPage({super.key});

  @override
  State<DuaPage> createState() => _DuaPageState();
}

class _DuaPageState extends State<DuaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Duo kitobi"),
        centerTitle: true,
      ),
      body: PdfView(
        controller: PdfController(
          document: PdfDocument.openAsset('assets/files/dua.pdf'),
        ),
      ),
    );
  }
}
