import 'package:flutter/material.dart';

class PcView extends StatefulWidget {
  const PcView({Key? key}) : super(key: key);

  @override
  State<PcView> createState() => _PcViewState();
}

class _PcViewState extends State<PcView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pc Screen"),
      ),
    );
  }
}
