import static org.junit.Assert.*;
import org.junit.*;
import java.util.Arrays;
import java.util.List;

class IsMoon implements StringChecker {
  public boolean checkString(String s) {
    return s.equalsIgnoreCase("moon");
  }
}

public class TestListExamples {
  @Test(timeout = 500)
  public void testMergeRightEnd() {
    List<String> left = Arrays.asList("a", "b", "c");
    List<String> right = Arrays.asList("a", "d");
    List<String> merged = ListExamples.merge(left, right);
    List<String> expected = Arrays.asList("a", "a", "b", "c", "d");
    assertEquals(expected, merged);
  }

  @Test(timeout = 500)
  public void testFilterIsMoon() {
    List<String> test = Arrays.asList("MOON", "moOn", "notmoon", "moon");
    IsMoon sc = new IsMoon();
    List<String> result = ListExamples.filter(test, sc);
    List<String> expected = Arrays.asList("MOON", "moOn", "moon");
    assertEquals(expected, result);
  }
}
