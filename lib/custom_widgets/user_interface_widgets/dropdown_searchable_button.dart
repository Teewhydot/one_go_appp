import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_go_app/custom_widgets/functionality/constants.dart';

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
          dropdownWidth: 300.w,
          decoration: InputDecoration(
            filled: true,
            fillColor: textFieldFillColor,
            isDense: true,
            contentPadding: EdgeInsets.all(10.r),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          dropdownMaxHeight: 300,
          buttonWidth: double.infinity,
          dropdownDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          buttonHeight: 50,
          hint: Padding(
            padding: EdgeInsets.only(left: 20.r),
            child: Text(widget.hint, style: normalBlackStyle),
          ),
          items: widget.itemsInList
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.r),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 14.sp,
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
                hintStyle: TextStyle(fontSize: 12.sp),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
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
