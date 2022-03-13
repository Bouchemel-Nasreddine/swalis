import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width *0.9,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(width: 1.0),
                ),
                prefixIcon: const Icon(Icons.search),
                focusColor: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
