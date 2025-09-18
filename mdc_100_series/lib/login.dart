// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/recomecha.png'),
                const SizedBox(height: 16.0),
                const Text('RECO-MECHA'),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)

            // TODO: Add TextField widgets (101)
            // [Name]
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xADD8E6FF),
                labelText: 'Username',
              ),
            ),
            // spacer
            const SizedBox(height: 12.0),
           // [Password]
TextField(
  controller: _passwordController,
  decoration: const InputDecoration(
    filled: true,
    fillColor: Color(0xADD8E6FF),
    labelText: 'Password',
  ),
  obscureText: true,
),

// add space before buttons
const SizedBox(height: 24.0),

// [Buttons]
OverflowBar(
  alignment: MainAxisAlignment.end,
  children: <Widget>[
    TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF000000),
        backgroundColor: Color(0x262626FF),
      ),
      child: const Text('CANCEL'),
      onPressed: () {
        // TODO: Clear the text fields (101)
    _usernameController.clear();
    _passwordController.clear();
      },
    ),
    ElevatedButton(
            style: TextButton.styleFrom(
        foregroundColor: Color(0xFF000000),
        backgroundColor: Color(0x262626FF),
      ),
      child: const Text('NEXT'),
      onPressed: () {
        // TODO: Show the next page (101)
  Navigator.pop(context);

      },
    ),
  ],
),

          ],
        ),
      ),
    );
  }
}


