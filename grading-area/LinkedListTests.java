import static org.junit.Assert.*;
import org.junit.*;

public class LinkedListTests {
    @Test
    public void testLinkedList(){
        LinkedList list = new LinkedList();
        list.prepend(2);
        list.prepend(1);
        list.append(3);
        list.append(4);

        assertEquals("1 2 3 4 ",list.toString());
    }
    @Test
    public void testLinkedListSucceed(){
        LinkedList list = new LinkedList();
        list.prepend(1);

        assertEquals(1,list.first());
    }
}
