import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Reader App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PDFViewPage(),
    );
  }
}

class PDFViewPage extends StatefulWidget {
  @override
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewPage> {
  final String pdfUrl = 'https://static.realmadrid.com/StaticFiles/RealMadrid/img/pdf/Annual_Report_RealMadrid_2021-22.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Online PDF Book Reader'),
      ),
      body: SfPdfViewer.network(pdfUrl),
    );
  }
}