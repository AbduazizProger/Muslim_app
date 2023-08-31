import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class SalahPage extends StatefulWidget {
  const SalahPage({super.key});

  @override
  State<SalahPage> createState() => _SalahPageState();
}

class _SalahPageState extends State<SalahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Namoz kitobi'),
        centerTitle: true,
      ),
      body: PdfView(
        controller: PdfController(
          document: PdfDocument.openAsset('assets/files/namoz.pdf'),
        ),
      ),
    );
  }
}
