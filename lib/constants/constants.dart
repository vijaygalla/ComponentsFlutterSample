import 'package:components_sample_app/model.dart';
import 'package:flutter/material.dart';

InputDecoration textInputDecoration = InputDecoration(
  fillColor: Colors.deepPurple.shade50,
  contentPadding: EdgeInsets.all(10),
  filled: true,
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.deepPurple)),
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade600)),
);

// to by pass the login locally using stub username & password
String userName = 'vijaymca';
String pwd = 'test1234';
List<String> sizes = [
  'Small',
  'Medium',
  'Large',
  'X-Large',
  'XX-Large',
  'XXX-Large'
];

List<Detail> dummyDetails = [
  Detail(
      isTopProduct: true,
      title: 'Adidas Shirt',
      description: 'Black Adidas Shirt. Slim fit shirt for daily use.',
      size: 'Large',
      type: 'Deliverable'),
  Detail(
      isTopProduct: false,
      title: 'Brown Leather Bag',
      description:
          'A Brown color bag with strap is now available at super discounted rate',
      size: 'Medium',
      type: 'Deliverable'),
  Detail(
      isTopProduct: true,
      title: 'Blue Leather Bag',
      description:
          'A Blue color bag without strap is now available at super discounted rate',
      size: 'X-Large',
      type: 'Downloadable'),
  Detail(
      isTopProduct: true,
      title: 'Blue Leather Bag',
      description:
          'A Blue color bag without strap is now available at super discounted rate',
      size: 'X-Large',
      type: 'Downloadable'),
  Detail(
      isTopProduct: true,
      title: 'Blue Leather Bag',
      description:
          'A Blue color bag without strap is now available at super discounted rate',
      size: 'X-Large',
      type: 'Downloadable'),
];
