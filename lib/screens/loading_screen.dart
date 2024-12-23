import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/rotues.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Timer(const Duration(seconds: 3), () {
     router.go("/home");
    });
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo ve yükleme göstergesi bölümü
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Logo bölümü
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    'assets/images/logo..gif',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 30),

               
              ],
            ),
          ),
        ],
      ),
    );
  }
}
