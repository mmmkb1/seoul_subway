import 'dart:async';
import 'package:flutter/material.dart';

class InputFieldSearch extends StatefulWidget {
  final Function(String) onSearch;

  const InputFieldSearch({
    super.key,
    required this.onSearch,
  });

  @override
  _InputFieldSearchState createState() => _InputFieldSearchState();
}

class _InputFieldSearchState extends State<InputFieldSearch> {
  final TextEditingController _contentEditController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _contentEditController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _contentEditController.removeListener(_onSearchChanged);
    _contentEditController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 1), () {
      widget.onSearch(_contentEditController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          controller: _contentEditController,
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
