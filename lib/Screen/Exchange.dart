import 'package:banking_app_interface/Components/CustomDrawer.dart';
import 'package:flutter/material.dart';

class Exchange extends StatefulWidget {
  const Exchange({super.key});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  String _input = '';
  String _fromCurrency = 'USD';
  String _toCurrency = 'BDT';
  double _exchangeRate = 120.50;
  String _result = '';

  void _onKeyTap(String value) {
    setState(() {
      if (value == 'AC') {
        _input = '';
        _result = '';
      } else if (value == '←') {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
        }
      } else if (value == '=') {
        double amount = double.tryParse(_input) ?? 0;
        double converted = amount * _exchangeRate;
        _result = '${converted.toStringAsFixed(2)} $_toCurrency';
      } else {
        if (!(value == '.' && _input.contains('.'))) {
          _input += value;
        }
      }
    });
  }

  List<String> keys = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    '.', '0', '←',
    'AC', '=', '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange'),
        backgroundColor: Colors.indigo,
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.grey.shade100,
              ),
              child: Text(
                _input.isEmpty ? '0.00' : _input,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 16),

            // Currency dropdown
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _fromCurrency,
                    items: const [
                      DropdownMenuItem(value: 'USD', child: Text('USD')),
                      DropdownMenuItem(value: 'BDT', child: Text('BDT')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _fromCurrency = value!;
                        _exchangeRate = (_fromCurrency == 'USD' && _toCurrency == 'BDT')
                            ? 109.50
                            : 1 / 109.50;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'From',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                const Icon(Icons.swap_horiz),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _toCurrency,
                    items: const [
                      DropdownMenuItem(value: 'BDT', child: Text('BDT')),
                      DropdownMenuItem(value: 'USD', child: Text('USD')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _toCurrency = value!;
                        _exchangeRate = (_fromCurrency == 'USD' && _toCurrency == 'BDT')
                            ? 109.50
                            : 1 / 109.50;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'To',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Result
            if (_result.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green),
                ),
                child: Text(
                  'Converted: $_result',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ),
            const SizedBox(height: 16),

            // Custom Keypad
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.5,
                children: keys.map((key) {
                  if (key.isEmpty) return const SizedBox();
                  final isAction = key == 'AC' || key == '=' || key == '←';
                  return ElevatedButton(
                    onPressed: () => _onKeyTap(key),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isAction
                          ? (key == '='
                              ? Colors.indigo
                              : key == 'AC'
                                  ? Colors.redAccent
                                  : Colors.grey.shade400)
                          : Colors.white,
                      foregroundColor: isAction ? Colors.white : Colors.black,
                      elevation: 2,
                      textStyle: const TextStyle(fontSize: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Text(key),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
