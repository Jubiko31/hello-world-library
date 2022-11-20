global class HelloWorld {
    public String hello() {
        return 'Hello, World!';
    }
}

@Test
private class HelloWorldTest {
    @Test static void hello() {
        HelloWorld hello_world = new HelloWorld();
        String res = hello_world.hello()
    }
}
// with Mavens Mate