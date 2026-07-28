import 'dart:convert';
import 'dart:io';

void main() {
  final file = File('err.json');
  final jsonStr = file.readAsStringSync();
  final data = json.decode(jsonStr);
  final errors = data['diagnostics'];
  for (var err in errors) {
    if (err['severity'] != 'INFO') {
      final loc = err['location'];
      print(
          '${loc['file']}:${loc['range']['start']['line']} - ${err['problemMessage']} (${err['code']})');
    }
  }
}
