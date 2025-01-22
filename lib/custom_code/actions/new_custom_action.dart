// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction() async {
  // I want the action to open up a menu with all the pages available to select.

  // Define the list of pages available to select
  List<String> pages = ['Home', 'About', 'Services', 'Contact'];

  // Show a dialog with a list of pages to select
  String selectedPage = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Select a Page'),
        content: SingleChildScrollView(
          child: ListBody(
            children: pages.map((page) {
              return ListTile(
                title: Text(page),
                onTap: () {
                  Navigator.pop(context, page);
                },
              );
            }).toList(),
          ),
        ),
      );
    },
  );

  // Perform action based on the selected page
  if (selectedPage != null) {
    switch (selectedPage) {
      case 'Home':
        // Open Home page
        break;
      case 'About':
        // Open About page
        break;
      case 'Services':
        // Open Services page
        break;
      case 'Contact':
        // Open Contact page
        break;
      default:
        // Do nothing
        break;
    }
  }
}
