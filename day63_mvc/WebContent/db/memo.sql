create table memo (
    id VARCHAR2(20) not null,
    email VARCHAR2(20) not null,
    content VARCHAR2(100)
);

/*
Model
View
Controller

- 패키지 구조 정의
kr.or.kosa.dto
kr.or.kosa.dao
kr.or.kosa.service
kr.or.kosa.util // connectionhelper, closehelper ...

1. DB >> Table 설계 >> memo

1. DTO, VO, TO <-- model
2. DB(연결)
3. DAO <- controller 사용 // select, insert, update ... 
4. 디자인 파일 jsp -> UI // memo.html, memoLIst.jsp...

글쓰기 -> writeServlet
목록보기 -> listServlet
등등

DBCP & POOL & JNDI

1)
2)


<?xml version="1.0" encoding="UTF-8"?>

<Context reloadable="true">
	<WatchedREsource>WEB-INF/web.xml</WatchedREsource>
<Resource name="jdbc/MemoDB"
			auth="Container"
			type="javax.sql.DataSource"
			driverClassName="oracle.jdbc.OracleDriver"
			url="jdbc:oracle:thin:@localhost:1521:orcl"
			username="user01"
			password="oracle"
			
			maxWait="-1"
			maxIdle="20" //사용하지 않는 idle(대기)상태의 최대 수
			maxTotal="20" //커넥션 객체의 최대 개수(default : 8)
			maxActive="20" /> //DataSource로 부터 꺼낼 수 있는 커넥션 최대 개수 기본값 8?개
			/>
</Context>

3) user code - ~~~ DAO

*/









