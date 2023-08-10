import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FilterPage'),
      ),
      body: Center(
        child: Text('Bu sayfa daha hazir degil'),
      ),
    );
  }
}
