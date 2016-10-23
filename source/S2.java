public class S2 {
    public static void main(String[] args) {
        String first = args[0];
        String whatever = "Hello " + first.toUpperCase();//NullPointerHere

        if (first != null) {
            System.out.println("Hello " + first.toUpperCase());
        }

        String otherAssignment;//two lines
        if ((otherAssignment = args[0]) != null) {
            System.out.println(otherAssignment);
        }

        String greeting = "Hello " + first == null ? "no name" : first + " and hello again";

        String noNull = null;//nobody complains until runtime

        int typicalLength = greeting.length();
        int safeLength = first.length();//this throws NPE
    }
}
