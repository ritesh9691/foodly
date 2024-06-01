import 'package:flutter/material.dart';

import '../../common/customContainer.dart';

class 
ProfilePage extends StatelessWidget {
  const 
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
      ),
      body:CustomContainer(ContainerContent: Container(),)
    );
  }
}