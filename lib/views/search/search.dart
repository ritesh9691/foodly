import 'package:flutter/material.dart';

import '../../common/customContainer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search here'),
      ),
      body:CustomContainer(ContainerContent: Container(),)
    );
  }
}