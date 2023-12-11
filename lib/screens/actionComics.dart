import 'package:flutter/material.dart';
import 'package:project_zanko/components/designs/proTextKurdish.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.white,
          size: 20,
        ),
        actions: [Icon(Icons.search)],
        centerTitle: true,
        title: ProTextKurdish(fontsize: 20, rang: Colors.white, text: 'ئەکشن'),
      ),
    );
  }
}
