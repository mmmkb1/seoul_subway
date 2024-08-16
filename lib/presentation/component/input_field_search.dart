import 'package:flutter/material.dart';

class InputFieldSearch extends StatelessWidget {
  final Function(String) onSearch;

  const InputFieldSearch({
    super.key,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    final contentEditController = TextEditingController();
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          controller: contentEditController,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.grey,
            hintText: '역 이름을 입력하세요',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }
}
