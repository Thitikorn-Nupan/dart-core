import 'package:logging/logging.dart'; // test first dependency
/*
  Two classes work the same
  I think the second/MyLogging2 it does works good
  (No need to build Object class but must call setLogger(...) First.)
*/
class MyLogging {
  Logger? logger;
  MyLogging(String name) {
    /* set up logger on console */
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    });
    logger = Logger(name);
  }
}

class MyLogging2 {
  static Logger? logger;
  static setLogger(String name) {
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      print('${record.level.name} : ${record.time} : ${record.message}');
    });
    logger = Logger(name);
  }
}


class MyLogging3 {
  static Logger? logger;
  setLogConsole() {
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      print('${record.level.name} : ${record.time} : ${record.message}');
    });
  }
  setLogName(String name) {
    logger = Logger(name);
  }
}

/*
class MyLogging4 {
  Logger? logger;
  setLogConsole() {
    Logger.root.level = Level.ALL; // defaults to Level.INFO
    Logger.root.onRecord.listen((record) {
      print('${record.level.name} : ${record.time} : ${record.message}');
    });
  }
  setLogName(String name) {
    logger = Logger(name);
  }
}
*/
