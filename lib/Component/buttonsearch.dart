import 'package:flutter/material.dart';

class Buttonsearch extends StatelessWidget {
  final String hint;

  const Buttonsearch({Key key, @required this.hint}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 15, left: 15),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(60.0),
        child: TextFormField(
          // controller: txtSearch,
          cursorColor: Colors.grey,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.only(left: 20),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // setState(() {
                  //   if (txtSearch.text.isEmpty) {
                  //   } else {}
                  // });
                },
              ),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide.none,
              )),
        ),
      ),
    );
  }
}
