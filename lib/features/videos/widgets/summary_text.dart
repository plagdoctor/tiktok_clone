import 'package:flutter/material.dart';

class SummaryWidget extends StatefulWidget {
  final String text;
  final int maxLines;

  const SummaryWidget({
    super.key,
    required this.text,
    this.maxLines = 3,
  });

  @override
  _SummaryWidgetState createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  bool _showMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.text,
          maxLines: _showMore ? null : widget.maxLines,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.white),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _showMore = !_showMore;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                _showMore ? 'See less' : 'See more',
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                _showMore ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
