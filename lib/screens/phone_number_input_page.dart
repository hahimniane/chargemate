import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../constants/constants.dart';
import '../modals/phoneNumberInputViewModel.dart';
import '../utils/show_toat_util.dart';

class PhoneNumberInputPage extends StatefulWidget {
  PhoneNumberInputPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberInputPage> createState() => _PhoneNumberInputPageState();
}

class _PhoneNumberInputPageState extends State<PhoneNumberInputPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();
  final PhoneNumberInputViewModel _viewModel = PhoneNumberInputViewModel();
  final RoundedLoadingButtonController _loadingButtonController =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffDEEBE9),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
                // color: Color(0xffDEEBE9),
                width: MediaQuery.of(context).size.width * 0.50,
                child: Image(
                  fit: BoxFit.scaleDown,
                  image: AssetImage('assets/images/logos/img.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                decoration: const BoxDecoration(
                    // color: Color(0xffDEEBE9),
                    ),
                child: const Image(
                  image: AssetImage('assets/images/Asset 1 1.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 30),
                        child: Text(
                          'Lütfen Telefon Numarınızı Giriniz!',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: appColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Text(
                        'Size tek seferlik bir\ndoğrulama kodu göndereceğiz!',
                        style: TextStyle(
                          color: Color(0xff143463),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/images/tr.png'),
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.scaleDown,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '+90',
                                        style: TextStyle(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50,
                                child: TextFormField(
                                  onChanged: (value) {
                                    if (value.length > 10) {
                                      _phoneNumberController.text =
                                          value.substring(0, 10);
                                      _phoneNumberController.selection =
                                          TextSelection.fromPosition(
                                        TextPosition(
                                          offset: _phoneNumberController
                                              .text.length,
                                        ),
                                      );
                                      print('Only 10 values allowed.');
                                    }
                                  },
                                  controller: _phoneNumberController,
                                  keyboardType: TextInputType.numberWithOptions(
                                    signed: true,
                                  ),
                                  decoration: InputDecoration(
                                    isCollapsed: false,
                                    contentPadding: EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    labelText: 'Telefon Numarası',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a phone number';
                                    }
                                    final phoneRegex = RegExp(r'^\d{10}$');
                                    if (!phoneRegex.hasMatch(value)) {
                                      return 'Please enter a valid phone number without the country code';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Şarj işlemini hızlıca başlatmanız ve rezervasyon işlemlerinizi yapmanız için telefon numaranızı onaylatmanız gereklidir.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff64748B),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 4,
                                right: 8,
                                left: 8,
                                top: 10,
                              ),
                              child: RoundedLoadingButton(
                                borderRadius: 12,
                                width: MediaQuery.of(context).size.width * 0.90,
                                color: appColor,
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    final phoneNumber =
                                        '+90' + _phoneNumberController.text;
                                    print('the phone number is $phoneNumber');
                                    final numberExists = await _viewModel
                                        .checkIfNumberExists(phoneNumber);
                                    if (numberExists) {
                                      showToast(
                                          'Bu numara zaten kayıtlı. Lütfen oturum açın.');
                                      _loadingButtonController.error();
                                      _loadingButtonController.reset();
                                    } else {
                                      _viewModel.registerUser(
                                          context, phoneNumber);
                                    }
                                  } else {
                                    _loadingButtonController.error();
                                    _loadingButtonController.reset();
                                  }
                                },
                                controller: _loadingButtonController,
                                child: const Text(
                                  'Kodu Gönder',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _loadingButtonController.reset();
    super.dispose();
  }
}
