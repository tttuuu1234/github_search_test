import 'package:flutter/material.dart';

/// 検索TextFiled
class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    Key? key,
    required this.keywordController,
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  final TextEditingController keywordController;
  final Function(String value)? onChanged;
    final Function(String value)? onSubmitted;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: keywordController,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: 'キーワードを検索',
        contentPadding: EdgeInsets.zero,
        prefixIcon: const Icon(Icons.search),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }
}
