class Response<T> { // Generic Works Like Java Language

  T? _data;
  String? _status;
  String? _code;

  Response(this._data, this._status, this._code);

  T? get data => _data;

  set data(T? value) {
    _data = value;
  }

  String? get status => _status;

  String? get code => _code;

  set code(String? value) {
    _code = value;
  }

  set status(String? value) {
    _status = value;
  }

  @override
  String toString() {
    return 'Response{_data: $_data, _status: $_status, _code: $_code}';
  }

}