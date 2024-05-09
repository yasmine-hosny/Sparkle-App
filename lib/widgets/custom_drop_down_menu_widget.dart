import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final TextEditingController? myController;
  final String? errorText;
  const CustomDropdownMenu(
      {super.key, @required this.myController, @required this.errorText});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      // errorText: errorText,
      controller: myController,

      textStyle: TextStyle(
        fontSize: 17,
        // fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      menuHeight: 200,
      menuStyle: MenuStyle(
        // surfaceTintColor: MaterialStatePropertyAll(Colors.black),
        elevation: MaterialStatePropertyAll(.1),
        backgroundColor: MaterialStatePropertyAll(
          Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(
          fontSize: 17,
          color: Colors.black26,
          fontWeight: FontWeight.w600,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.amber),
        // ),
      ),
      // label: Text(
      //   'Choose Your Therapist',
      //   style: TextStyle(
      //     fontSize: 17,
      //     fontWeight: FontWeight.w500,
      //     color: Colors.black,
      //   ),
      // ),
      width: 312,

      hintText: 'choose Your therapist',
      enableFilter: true,
      enableSearch: true,
      dropdownMenuEntries: <DropdownMenuEntry<dynamic>>[
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'Yasmine Hosny',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'mena ebrahim',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'aya hassan',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'reem mohamed',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'shams gomaa',
        ),
        DropdownMenuEntry(
          value: Text('data'),
          label: 'shams ebrahim',
        ),
      ],
    );
  }
}
