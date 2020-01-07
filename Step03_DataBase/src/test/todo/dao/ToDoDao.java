package test.todo.dao;
/*
 * Application 전역에서 오직 한개의 객체만 생성되어서 사용되는 구조로 Dao 클래스 설계하기
 * 
 * 1. 외부에서 객체 생성할 수 없도록 생성자의 접근 지정자를 private로 지정
 * 2. 자신의 참조값을 담을 static 필드 선언
 * 3. 자신의 참조값을 리턴해주는 public static 메소드 제공
 */
public class ToDoDao {
	// 2. 자신의 참조값을 담을 static 필드 선언
	private static ToDoDao dao;
	// 1. 외부에서 객체 생성할 수 없도록 생성자의 접근 지정자를 private로 지정
	private ToDoDao() {}
	// 3. 자신의 참조값을 리턴해주는 public static 메소드 제공
	public static ToDoDao getInstance() {
		if(dao==null) {		// 최초 호출될 때에는 null이다.
			// null이면 객체를 생성해서 static 참조값을 필드에 저장한다.
			dao=new ToDoDao();
		}
		return dao;
	}
}
