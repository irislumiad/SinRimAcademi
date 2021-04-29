package test;

public class TestService implements TestServiceI {

	@Override
	public void output() {
		TestDaoI s = new TestDao();
		s.output();
	}

}
