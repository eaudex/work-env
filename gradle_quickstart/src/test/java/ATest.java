
import static org.junit.Assert.fail;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertNotSame;

import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.BeforeClass;
import org.junit.AfterClass;
import org.junit.Ignore;

import java.util.Arrays;

/*
 * http://www.vogella.com/tutorials/JUnit/article.html
 */
public class ATest {

    @BeforeClass
    public static void beforeClassTest() {
        System.out.println("BeforeClass Test");
    }
    @AfterClass
    public static void afterClassTest() {
        System.out.println("AfterClass Test");
    }

    @Before
    public void beforeTest() {
        System.out.println("Before Test");
    }
    @After
    public void afterTest() {
        System.out.println("After Test");
    }

    @Test
    public void joinTest() {
        String[] testcase = {"Q", "QQ", "QQQ"};
        String expected = "Q,QQ,QQQ";
        String actual = A.join(testcase);
        String msg = String.format("A.join(%s) =? %s", Arrays.toString(testcase),expected);
        assertEquals(msg, expected, actual);

        assertTrue(msg, true);
        assertFalse(msg, false);
        assertNull(msg, null);
        assertNotNull(msg, testcase);
        assertSame(msg, testcase, testcase);
        assertNotSame(msg, expected, actual);
    }

    @Ignore("Disabled Test")
    public void disabledTest() {
        fail("Always failing test");
    }

}
