import 'package:flutter/material.dart';

// Style
import '../../././style.dart';

class CarDetails extends StatelessWidget {
  final String _specifications;
  final String _summary;

  CarDetails(this._specifications, this._summary);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 15.0, 16, 5.0),
          child: Text(_specifications, style: SpecTextStyle),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 10.0, 16, 5.0),
          child: Text(_summary, style: SummaryTextStyle),
        ),
      ],
    );
  }
}
