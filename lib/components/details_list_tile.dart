import 'package:components_sample_app/components/bordered_button.dart';
import 'package:components_sample_app/model.dart';
import 'package:flutter/material.dart';

class DetailTile extends StatelessWidget {
  final Detail detail;
  DetailTile({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 4, 16, 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (detail.isTopProduct)
                        FilledButton(
                          onPressed: () {},
                          child: Text('Top Product'),
                        ),
                      Text(
                        detail.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        detail.description,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          BorderedButton(title: detail.size),
                          SizedBox(width: 10),
                          BorderedButton(title: detail.type),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Colors.deepPurple.shade100,
          )
        ],
      ),
    );
  }
}
