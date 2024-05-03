import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yourbeauty/common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
