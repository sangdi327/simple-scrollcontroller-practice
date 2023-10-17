import 'package:flutter/material.dart';

class ListbyScroll extends StatefulWidget {
  const ListbyScroll({super.key});

  @override
  State<ListbyScroll> createState() => _ListbyScrollState();
}

class _ListbyScrollState extends State<ListbyScroll> {
  ScrollController? controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item list'),
      ),
      body: ListView.builder(
        controller: controller,
        itemCount: 100,
        itemBuilder: (context, index) => ListTile(
          title: Text('item : $index'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller!.animateTo(
            0.0,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
          );
        },
        child: const Icon(Icons.arrow_drop_up),
      ),
    );
  }
}
