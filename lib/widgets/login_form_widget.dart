// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatefulWidget {
  final String imageUrl;
  final String bottomMessage;
  final Widget formRedirect;
  final Widget formDestination;
  const LoginFormWidget({
    super.key,
    required this.imageUrl,
    required this.bottomMessage,
    required this.formRedirect,
    required this.formDestination,
  });

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Small screen: Display a column
          return Center(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 800,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            widget.imageUrl,
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Enter your email',
                                filled: true, // Enable background color
                                fillColor: Colors.white, // Set background color
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ), // Hint text color
                                enabledBorder: OutlineInputBorder(
                                  // Border when not focused
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  // Border when focused
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  // Border when validation fails
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  // Border when focused and validation fails
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                              ), // Input text color
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const Spacer(),
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Enter your password',
                                filled: true, // Enable background color
                                fillColor: Colors.white, // Set background color
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ), // Hint text color
                                enabledBorder: OutlineInputBorder(
                                  // Border when not focused
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  // Border when focused
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  // Border when validation fails
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  // Border when focused and validation fails
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 2.5,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: Colors.black,
                              ), // Input text color
                              validator: (String? value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }

                                if (value.length < 6) {
                                  return 'Password must have at least 6 characters';
                                }
                                return null;
                              },
                            ),
                            const Spacer(),
                            RichText(
                              text: TextSpan(
                                  text: widget.bottomMessage,
                                  children: [
                                    TextSpan(
                                      text: "Click Here",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  widget.formRedirect,
                                            ),
                                          );
                                        },
                                      style: const TextStyle(
                                        color: Colors.green,
                                      ),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: ElevatedButton(
                                style: const ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(
                                    Colors.green,
                                  ),
                                ),
                                onPressed: () {
                                  // Validate will return true if the form is valid, or false if
                                  // the form is invalid.
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            widget.formDestination,
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  'Submit',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          // Large screen: Display a row
          return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/login_screen.png"),
              ],
            ),
          );
        }
      },
    );
  }
}
