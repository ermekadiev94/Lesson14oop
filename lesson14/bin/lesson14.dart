class Worker {
  String? name;
  String? surname;
  int? rate;
  int? days;

  Worker(this.rate, this.days);
  getSalary() {
    return ('${rate! * days!} \$');
  }
}

class MyString {
  reverse(String a) {
    List c = a.split('');
    return c.reversed.toString();
  }

  ucFirst(String b) {
    String asdn = b.replaceFirst(b[0], b[0].toUpperCase());
    return asdn;
  }

  ucWords(String c) {
    return c
        .split(' ')
        .map((e) => e[0].toUpperCase() + e.substring(1))
        .join(' ');
  }
}

class Validator {
  isEmail(String n) {
    RegExp exp = RegExp("@");
    Iterable<RegExpMatch> matches = exp.allMatches(n);
    if (matches.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

void main() {
  var worker1 = Worker(10, 20);
  print(worker1.getSalary());

  var mystring = MyString();
  {
    print(mystring.reverse('Test'));
    print(mystring.ucFirst('test test test'));
    print(mystring.ucWords('test test test'));
  }
  var validate1 = Validator();
  {
    print(validate1.isEmail('ermekmail.kg'));
  }
}
