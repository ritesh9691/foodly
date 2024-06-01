import 'package:flutter/material.dart';

import '../../common/customContainer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('cart Page'),
      ),
      body:CustomContainer(ContainerContent: Container(),)
    );
  }
}