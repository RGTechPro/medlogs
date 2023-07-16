import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class PDFScanScreen extends StatefulWidget {
  const PDFScanScreen({super.key});

  @override
  State<PDFScanScreen> createState() => _PDFScanScreenState();
}

class _PDFScanScreenState extends State<PDFScanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: DottedBorder(
                    radius: const Radius.circular(20),
                    dashPattern: const [12, 5],
                    padding: const EdgeInsets.all(25),
                    borderPadding: const EdgeInsets.all(10),
                    color: Colors.green,
                    child: Container(
                      child: Column(
                        children: [
                          const Text(
                            'Upload your report',
                            style:
                                TextStyle(fontSize: 30, color: Colors.black54),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFA0E115),
                                  Color(0xFF0383BB),
                                ],
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 175,
                                child: Row(
                                  children: [
                                    Text(
                                      'Upload your report',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.cloud,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
