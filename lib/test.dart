import 'dart:ffi';

import 'package:flutter/material.dart';

class Test_Test extends StatelessWidget {
  const Test_Test({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Fruits = ["Apple", "Strowberry", "Pie"];
    List<DropdownMenuEntry> Getingvalues = [];

    void getting_item() {
      for (int x = 0; x < Fruits.length; x++) {
        String One_fruit = Fruits[x];
        print(One_fruit);
        DropdownMenuEntry onfruiit =
            DropdownMenuEntry(label: One_fruit, value: One_fruit);
        Getingvalues.add(onfruiit);
      }
    }

    getting_item();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
          child: DropdownMenu(
        dropdownMenuEntries: Getingvalues,
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
