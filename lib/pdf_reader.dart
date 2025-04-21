import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFPage extends StatelessWidget {
  final String pdfPath;

  PDFPage({required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lecture de PDF')),
      body: PDFView(
        filePath: pdfPath,
      ),
    );
  }
}
