import 'package:components_sample_app/components/details.dart';
import 'package:components_sample_app/constants/constants.dart';
import 'package:components_sample_app/components/radio_button.dart';
import 'package:flutter/material.dart';

class ComponentsPage extends StatefulWidget {
  const ComponentsPage({super.key});

  @override
  State<ComponentsPage> createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {
  String sizeSelected = '';

  bool isTopProductSelected = false;
  bool isDownloadableSelected = false;
  bool isDeliverableSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Form',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.deepPurple,
              ),
              SizedBox(height: 8),
              Text(
                'Product',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Add product details in the form below'),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                          labelText: 'Product Name',
                          fillColor: Colors.transparent,
                          contentPadding: EdgeInsets.all(16),
                          alignLabelWithHint: true,
                          prefixIcon: Icon(
                            Icons.production_quantity_limits_outlined,
                            color: Colors.deepPurple,
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Colors.transparent,
                          labelText: 'Product Description',
                          alignLabelWithHint: true,
                          prefixIcon: Icon(
                            Icons.description_outlined,
                            color: Colors.deepPurple,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: TextButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple.shade50)),
                  onPressed: () {
                    setState(() {
                      isTopProductSelected = !isTopProductSelected;
                    });
                  },
                  icon: Icon(
                      isTopProductSelected
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: Colors.deepPurple),
                  label: Text(
                    'Top Product',
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: RadioButton(
                          title: 'Deliverable',
                          isSelected: isDeliverableSelected,
                          callback: () {
                            setState(() {
                              isDeliverableSelected = !isDeliverableSelected;
                              isDownloadableSelected = !isDownloadableSelected;
                            });
                          }),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: RadioButton(
                          title: 'Downloadable',
                          isSelected: isDownloadableSelected,
                          callback: () {
                            setState(() {
                              isDeliverableSelected = !isDeliverableSelected;
                              isDownloadableSelected = !isDownloadableSelected;
                            });
                          }),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: DropdownMenu(
                    label: Text(
                      'Select Size',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    expandedInsets: EdgeInsets.zero,
                    onSelected: (value) {
                      setState(() {
                        sizeSelected = value ?? '';
                      });
                    },
                    inputDecorationTheme: InputDecorationTheme(
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    leadingIcon: Icon(
                      Icons.people,
                      color: Colors.deepPurple,
                    ),
                    trailingIcon: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.deepPurple,
                    ),
                    dropdownMenuEntries: sizes.map(
                      (size) {
                        return DropdownMenuEntry(
                            value: sizeSelected, label: size);
                      },
                    ).toList()),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    child: Text(
                      'SUBMIT FORM',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
