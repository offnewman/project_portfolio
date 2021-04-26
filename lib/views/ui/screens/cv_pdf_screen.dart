import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:project_portfolio/views/business_logic/models/job.dart';
import 'package:project_portfolio/views/business_logic/utils/cv.dart';
import 'package:project_portfolio/views/business_logic/utils/decoration.dart';
import 'package:project_portfolio/views/business_logic/utils/download.dart';
import 'package:project_portfolio/views/business_logic/utils/globals.dart';
import 'package:project_portfolio/views/utils/custom_title.dart';

class CVPDFScreen extends StatelessWidget {
  static const String id = '/cv';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.download_rounded),
      //   onPressed: () async => downloadFile(await _generateCV(PdfPageFormat.a4), fileName: 'Oscar Newman - CV.pdf'),
      // ),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Theme.of(context).cardColor,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50.0,
            ),
            CustomTitle(
              leading: Icon(Icons.description),
              title: 'CV',
            ),
            SizedBox(
              width: 20.0,
            ),
            TextButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.download_rounded),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Download')
                ],
              ),
              onPressed: () async => downloadFile(await _generateCV(PdfPageFormat.a4), fileName: 'Oscar Newman - CV.pdf'),
            ),
          ],
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.download_rounded),
        //     onPressed: () async => downloadFile(await _generateCV(PdfPageFormat.a4), fileName: 'Oscar Newman - CV.pdf'),
        //   )
        // ],
      ),
      body: PdfPreview(
        scrollViewDecoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        pdfPreviewPageDecoration: customBoxDecoration(context).copyWith(borderRadius: BorderRadius.zero),
        allowSharing: false,
        allowPrinting: false,
        canChangePageFormat: false,
        maxPageWidth: 700,
        build: _generateCV,
        initialPageFormat: PdfPageFormat.a4,
        onError: (context) => Center(child: Text('Generating PDF failed, please try again.')),
      ),
    );
  }

  FutureOr<Uint8List> _generateCV(PdfPageFormat _pdfPageFormat) => generateCV();
}
