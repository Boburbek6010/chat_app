import 'dart:async';
import 'dart:io';
import 'dart:math';


class Sms{
  late DateTime dateTime;
  List<String> contact = [
    '\nXurshidjon',
    '\nAsliddin',
    '\nMuhammadjon',
    '\nBoburbek',
    '\nMuzaffar',
    '\nAbdulaziz',
    '\nIslam',
    '\nNasibullo',
    '\nMumin',
    '\nImomboy',
    '\nYoqub',
    '\nAbdulazim',
    '\nSunnatillo',
    '\nRaxmiddin',
    '\nFayzullo',
    '\nJamshid\n'
  ];


  // @override
  // void calling() {
  //   int minute = 6;
  //   int minut = 8;
  //   print('${contact[3]} is calling you...');
  //   Timer.periodic(Duration(seconds: 2), (timer) {
  //     minute--;
  //     print('tuuut..');
  //     if (minute == 0) {
  //       timer.cancel();
  //       print('${contact[3]} is speaking with ${contact[random1()]}');
  //       Timer.periodic(Duration(seconds: 1), (timer) {
  //         minut--;
  //         print('speaking...');
  //         if (minut == 0) {
  //           timer.cancel();
  //           print('Communication was stopped');
  //         }
  //       });
  //     }
  //   });
  // }

  // @override
  // int random1() {
  //   Random random = Random();
  //   int randomNumber = random.nextInt(5);
  //   return randomNumber;
  // }



  void message(String name) {
    print('\nE\'tibor bering bitta sms narxi 10 so\'m \n\n');
    print('$name qancha pulingiz bor? ');
    int summa = int.parse(stdin.readLineSync()!);
    if (name.length > 2 && name.isNotEmpty) {
      for (int i = 0; i < contact.length; i++) {
        if ('\n$name' == contact[i] || '\n$name\n' == contact[i] || '\n$name' == contact[i].toLowerCase() || '\n$name\n' == contact[i].toLowerCase()) {
          String toWhom = '';
          print('\n                      Kimga sms xabar yozmoqchisiz? ');
          stdout.write('                      ');
          toWhom = stdin.readLineSync()!;
          for (int i = 0; i < contact.length; i++) {
            if ('\n$toWhom' == contact[i] || '\n$toWhom\n' == contact[i] || '\n$toWhom' == contact[i].toLowerCase() || '\n$toWhom\n' == contact[i].toLowerCase()) {
              String lastMsg = '';
              String secLastMsg = '';
              while (!(lastMsg == 'Ok' || lastMsg == 'ok' ||
                  lastMsg == 'Mayli' || lastMsg == 'mayli' ||
                  lastMsg == 'xayr' || lastMsg == 'Xayr' ||
                  lastMsg == 'Bopti' || lastMsg == 'bopti' ||
                  lastMsg == 'bo\'pti' || lastMsg == 'Bo\'pti' ||
                  secLastMsg == 'Ok' || secLastMsg == 'ok' ||
                  secLastMsg == 'Mayli' || secLastMsg == 'mayli' ||
                  secLastMsg == 'xayr' || secLastMsg == 'Xayr' ||
                  secLastMsg == 'Bopti' || secLastMsg == 'bopti' ||
                  secLastMsg == 'bo\'pti' || secLastMsg == 'Bo\'pti')) {

                if(summa <= 0){
                  print('\n\n\n       $name sizda yetarli mablag\' mavjud emas\n\n\n');
                  return;
                }
                summa -= 10;
                print('\n$name is typing...');
                lastMsg = stdin.readLineSync()!;
                stdout.write('    ${DateTime.now().hour}:');
                stdout.write(DateTime.now().minute);
                if(lastMsg == 'Ok' || lastMsg == 'ok' ||
                    lastMsg == 'Mayli' || lastMsg == 'mayli' ||
                    lastMsg == 'xayr' || lastMsg == 'Xayr' ||
                    lastMsg == 'Bopti' || lastMsg == 'bopti' ||
                    lastMsg == 'bo\'pti' || lastMsg == 'Bo\'pti'){
                  break;
                }
                print('\n                              $toWhom is typing...');
                stdout.write('                             => ');
                secLastMsg = stdin.readLineSync()!;
                stdout.write('                                   ${DateTime.now().hour}:');
                stdout.write(DateTime.now().minute);
              }
              print('\n\n                    Suxbat yakunlandi!');
              return;
            }
          }
          print('Bunday user contactda mavjud emas');
          return;
        }
      }
      print('Ism Contactda mavjud emas');
    }else{
      print('Bunday ism bo\'lmaydi');
    }
  }










}



