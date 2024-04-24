/*
  Dart Async is related to asynchronous programming.
  It executes the asynchronous operation in a thread.
*/
import "dart:async";
import "dart:io";
import "../libraries/logging.dart" as ttknpdev;


testAsyncFunction () {


  var log = ttknpdev.Logging.logger;

  File file1 = new File("B:\\practice-dart\\dart-core\\message.txt");

  // The Dart Future is defined as getting a result sometime in the future.
  // The Future object uses to facilitate asynchronous programming.
  Future<String> fs = file1.readAsString();

  // returns a future object, it is an async method
  fs.then((data) => log?.info(data));

  // once file is read, call back method is invoked
  log?.info("End of main"); // **** print first


}
// ******** Remember if you need to use async your main() func must be sync
main () async {

  ttknpdev.Logging()
    ..setLogConsole()
    ..setLogName("ttknpdev");
  var log = ttknpdev.Logging.logger;

  // Work like async/await Js
  log?.info(plus(5,5)); // Instance of 'Future<dynamic>'
  //  The await expression evaluates plus() ****
  //  and then suspends the currently running function until the result is ready.
  log?.info(await plus(5, 5)); // 5.0 + 5.0 = 10.0

}
/*

 Dart async and await
 The async and await keywords are allowed to implement asynchronous programming without using the Future API.
 Syntax !!
 func_name() async {
   //function body
 }
 ** Dart await Keyword
 The await keyword is also used to execute function asynchronously.

*/

// *** my async function
plus (double x , double y) async {
  return "$x + $y = ${x+y}";
}