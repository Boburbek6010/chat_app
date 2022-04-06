import 'dart:io';
import 'moduls/chat_class.dart';
import 'service/lang_service.dart';

void main() {

  // LangServise.language = Language.ru;

  Sms sms = Sms();
  print('${sms.contact}\n');
  print(LangServise.tr(('                      Ismingizni kiriting: ')));
  stdout.write('                      ');
  sms.message(stdin.readLineSync()!);

  
  
  
  
  
  
}
