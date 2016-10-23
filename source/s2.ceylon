"No more NullPointerExceptions! Compiler guaranteed."
shared void s2() {
    String? first = process.arguments.first;
//    value whatever = "Hello ``first``";   //<- compile error
    if (exists first) {
        print("Hello ``first.uppercased```");
    }

    if (exists otherAssignment = process.arguments.first) {
        print(otherAssignment);
    }

    String greeting = "Hello ``first else "no name"`` and hello again!";
    print(greeting);

//    String noNull = null; //compile error
    String? noNull = null;

    Integer typicalLength = greeting.size;
//    Integer nonCompilableLength = first.size;
    Integer compilableLength = first?.size else 0;
}