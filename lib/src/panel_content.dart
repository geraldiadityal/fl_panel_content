import 'package:flutter/material.dart';

class PanelContent extends StatefulWidget {
  final Icon? icon;
  final String title;
  final TextStyle? titleStyle;

  //default is false,
  final bool centerTitle;

  final Widget body;

  const PanelContent({
    Key? key,
    this.icon,
    required this.title,
    required this.body,
    this.centerTitle = false,
    this.titleStyle,
  }) : super(key: key);

  @override
  State<PanelContent> createState() => _PanelContentState();
}

class _PanelContentState extends State<PanelContent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.all(16),
      constraints: BoxConstraints(
        minHeight: 50,
        minWidth: size.width,
        maxHeight: size.height,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xff0B5351),
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0)
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: widget.centerTitle
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              SizedBox(child: widget.icon),
              Padding(
                padding: EdgeInsets.only(
                  left: (widget.icon == null) ? 0 : 8.0,
                ),
                child: SizedBox(child: Text(widget.title, style: widget.titleStyle)),
              ),
            ],
          ),
          Divider(
            color: Color(0xff0B5351),
            height: size.height * 0.04,
            thickness: 2,
          ),
          widget.body,
        ],
      ),
    );
  }
}
