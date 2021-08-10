import 'package:flutter/material.dart';
import 'package:test_pr/ui/details_screen/details_screen.dart';

class FileListItem extends StatelessWidget {
  const FileListItem({required this.name, required this.size, Key? key})
      : super(key: key);

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    name: name,
                    size: size,
                  )),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name), Text('${size.toStringAsFixed(2)} MB')]),
      ),
    );
  }
}
