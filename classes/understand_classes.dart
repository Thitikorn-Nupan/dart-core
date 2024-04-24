/*
  Dart provides named constructors to enable a class define multiple constructors.
  *** Class_name.constructor_name(param_list)
*/
class Car extends Engine {
  // ***
  static final String CLASSNAME = "Car";
  String? _brand;
  String? _model;
  // late keyword work like kotlin *******  can access `this` in `late` initializer:
  late num? _price = this._price;

  // Default constructor
  Car(this._brand, this._model) {
    print("Default constructor's worked");
  }

  // Declare named constructor
  Car.constructor2(String _brand,String _model) {
    this._brand = _brand;
    this._model = _model;
    this._price = 0.1;
  }

  Car.constructor3(String _brand,String _model,num _price ,String engineNumber) {
    this._brand = _brand;
    this._model = _model;
    this._price = _price;
    // super keyword is used to refer to the immediate parent of a class.
    super.engineNumber = engineNumber;
  }

  logCar() {
    print("Car{_brand: $_brand, _model: $_model, _price: $_price , engineNumber : $_engineNumber}");
  }

  @override
  String toString() {
    return 'Car{_brand: $_brand, _model: $_model}';
  }

}
/*
  Class Inheritance
  Dart supports the concept of Inheritance which is the ability of a program to create new classes from an existing class.
  The class that is extended to create newer classes is called the parent class/super class.
*/
class Engine {

  String? _engineNumber;

  String? get engineNumber => _engineNumber;

  set engineNumber(String? value) {
    _engineNumber = value;
  }

  releaseDate() {
    return "01/01/2024";
  }

}

main() {
  // var car = Car("Toyota", "Yaris Sport 2023"); // called default constructor
  // var car2 = Car.constructor2("Toyota", "Yaris Smart 2023"); // called your named constructor
  // var car3 = Car.constructor3("Toyota", "Yaris Smart 2023",699000.01,"AD11235648T"); // called your named constructor
  // way to called setter
  // car3.engineNumber = "AD11235648T";
  // print(car3._engineNumber);
  // print(Car.CLASSNAME); called static data
  /*
    The Cascade operator (..)
    cascade operator can be used as a shorthand in cases
    where there is a sequence of invocations.
  */
  Car.constructor3("Toyota", "Yaris Smart 2023",699000.01,"AD11235648T")
      ..logCar();
}