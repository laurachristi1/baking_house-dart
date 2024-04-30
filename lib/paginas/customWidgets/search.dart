import 'package:flutter/material.dart';

Widget SearchTop (){
  return Container(
    padding: const EdgeInsets.all(8),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          hintText: 'Pesquisar eventos',
          hintStyle: TextStyle(color: Colors.white),        
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            borderSide: BorderSide(color: Colors.white),
          ),
          contentPadding: EdgeInsets.all(4),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          filled: true,
          fillColor: Colors.transparent,
        ),
      ),
    ),
  );

}