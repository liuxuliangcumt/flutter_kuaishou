import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ConcernView extends StatefulWidget {
  @override
  _ConcernViewState createState() => new _ConcernViewState();
}

class _ConcernViewState extends State<ConcernView> {
  @override
  Widget build(BuildContext context) {
    // ignore: strong_mode_invalid_cast_new_expr
    return GridView.custom(
      gridDelegate:,
      childrenDelegate:,

    );
  }
}

class GridViewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Icon(Icons.flare),
        Text("0523263"),
      ],
    );
  }
}
