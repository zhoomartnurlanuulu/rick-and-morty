import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {Key? key,
      this.maxLines = 1,
      required this.label,
      required this.text,
      required this.onChanged})
      : super(key: key);
  final int maxLines;
  final String label;
  final String text;
  final ValueChanged<String> onChanged;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(widget.label,
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium?.color)),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.label,
            hintStyle: const TextStyle(color: Color(0xff5B6975)),
            fillColor: Theme.of(context).primaryColor,
            filled: true,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(width: 1)),
          ),
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
        ),
      ],
    );
  }
}
