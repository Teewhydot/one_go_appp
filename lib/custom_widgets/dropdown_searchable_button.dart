import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:one_go_app/custom_widgets/constants.dart';

class DropDownButtonSearchable extends StatefulWidget {
  final String hint;
  final List<String> itemsInList;

  const DropDownButtonSearchable({super.key, required this.hint, required this.itemsInList});


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
          decoration: InputDecoration(
            fillColor: textFieldFillColor,
            isDense: true,
            filled: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(25),
            ),
          ),
          isExpanded: true,
          hint: Text( widget.hint,
            style: normalBlackStyle,
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black45,
          ),
          iconSize: 30,
          buttonHeight: 60,
          buttonPadding: const EdgeInsets.only(left: 20, right: 20),
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
                hintText: 'Search for an location',
                hintStyle: const TextStyle(fontSize: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          searchMatchFn: (item, searchValue) {
            return (item.value.toString().contains(searchValue));
          },
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          items: widget.itemsInList
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return 'Please select gender.';
            }
          },
          onChanged: (value) {
            selectedValue = value as String;
          },
          onSaved: (value) {
            selectedValue = value.toString();
          },
        ),
      ),
    );
  }
}
