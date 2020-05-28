class Person {
  var name;var age;var address;
  Person(this.name,this.age,this.address);

  @override
  String toString() {
    return 'Person{name: $name, age: $age, address: $address}';
  }
}