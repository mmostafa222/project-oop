abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() ;
}

class Patient extends Person {
  String condition;

  Patient(String name, int age, this.condition) : super(name, age);

  @override
  void displayInfo() {
    print('Patient - Name: $name, Age: $age, Condition: $condition');
  }
}

class Doctor extends Person {
  String specialty;

  Doctor(String name, int age, this.specialty) : super(name, age);

  @override
  void displayInfo() {
    print('Doctor - Name: $name, Age: $age, Specialty: $specialty');
  }

  void prescribeMedicine() {
    print('Prescribing medicine...');
  }
}


void main() {

  Patient patient = Patient('Mohamed', 21, 'Headache');
  patient.displayInfo();

  Doctor doctor = Doctor('Dr. Mostafa', 40, 'Cardiology');
  doctor.displayInfo();
  doctor.prescribeMedicine();
}