import 'package:components_sample_app/components/details_list_tile.dart';
import 'package:components_sample_app/constants/constants.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: dummyDetails.length,
          itemBuilder: (context, index) {
            return DetailTile(detail: dummyDetails[index]);
          }),
    );
  }
}
