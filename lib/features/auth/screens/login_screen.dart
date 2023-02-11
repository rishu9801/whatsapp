import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';
import 'package:whatsapp/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode:
          true, // optional. Shows phone code before the country name.
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your phone number"),
        actions: const [Icon(CupertinoIcons.ellipsis_vertical)],
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "WhatsApp will need to verify your phone number.",
                ),
                TextButton(
                    onPressed: pickCountry,
                    child: const Text(
                      "Choose a country",
                    )),
                Row(
                  children: [
                    if (country != null) Text("+${country!.phoneCode}"),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                        controller: phoneController,
                        decoration:
                            const InputDecoration(hintText: "phone number"),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: CustomButton(text: "Next", onPressed: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
