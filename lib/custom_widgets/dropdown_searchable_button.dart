import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';

class DropDownButtonSearchable extends StatefulWidget {
  final String hint;
  final List<String> itemsInList;

  const DropDownButtonSearchable(
      {super.key, required this.hint, required this.itemsInList});

  @override
  State<DropDownButtonSearchable> createState() =>
      _DropDownButtonSearchableState();
}

class _DropDownButtonSearchableState extends State<DropDownButtonSearchable> {
  String? selectedValue;

  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField2(
          dropdownWidth: 300,
          decoration: InputDecoration(
            filled: true,
            fillColor: textFieldFillColor,
            isDense: true,
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          dropdownMaxHeight: 300,
          buttonWidth: double.infinity,
          dropdownDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          buttonHeight: 50,
          hint: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(widget.hint, style: normalBlackStyle),
          ),
          items: widget.itemsInList
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          validator: (value) {
            if (value == null) {
              return 'Please select an item';
            }
            return null;
          },
          searchController: textEditingController,
          searchInnerWidget: Padding(
            padding: const EdgeInsets.only(
              top: 8,
              bottom: 4,
              right: 8,
              left: 8,
            ),
            child: TextFormField(
              controller: textEditingController,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                hintText: 'Search for an item...',
                hintStyle: const TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return (item.value.toString().contains(searchValue));
          },
          //This to clear the search value when you close the menu
          onMenuStateChange: (isOpen) {
            if (!isOpen) {
              textEditingController.clear();
            }
          },
        ),
      ),
    );
  }
}
