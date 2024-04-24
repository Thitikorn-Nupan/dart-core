/*
 ******** Custom Library
*/
// First, let me define a name library
// Not setting library still work!!
library ttknpdev_logger;
import 'package:logging/logging.dart';
class Logging {
  // this way is the best for using The Cascade operator (..)
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