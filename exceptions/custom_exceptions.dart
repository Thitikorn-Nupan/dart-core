/*
  ********** Syntax **********
  class Custom_exception_Name implements Exception {
   // can contain constructors, variables and methods
  }
  ****************************
*/
class NotAllowedException implements Exception {

  String? _cause;

  NotAllowedException(this._cause);

  String? get cause => _cause;

}