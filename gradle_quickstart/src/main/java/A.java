

import com.google.common.base.Joiner;

public class A {

    public static String join(String[] strs) {
        return Joiner.on(",").join(strs);
    }


    public static void main(String[] args) {
        String[] a = {"ABC", "DEF", "GHI"};
        String ajoin = join(a);
        System.out.println(ajoin);
    }

}
