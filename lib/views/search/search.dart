import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search here'),
      ),
      body: Center(
        child: Text('Search bar will be here '),
      ),
    );
  }
}