package com.sist.web.vo;
import lombok.Data;
/*
 *   service : BI(기능 수행)
 *   vo : 데이터를 모아서 한번에 전송 목적
 *   mapper / repository : 데이터베이서 연동
 *   기타
 *     security / websocket
 *     
 *  ---------------------------------------
 *  부트 : 
 *       @SpringBootApplication => 웹 구동
 *       Controller : @ReestController / @Controller
 *       Serivce : @Service
 *       Repository : @Repository : JPA / Mapper
 *       Entity : 데이터베이스 연동 => 컬럼명이 동일 => JPA
 *       동록 : 동작에 필요한 설정
 *             application.properties / application.yml
 *       WebFlux : @GetMapping / @PostMapping / @PutMapping / @DeleteMapping
 *          | 멀티미디어 전송 => 실시간 스트리밍
 *          | Spring AI
 *       Dependency / Injection (DI)
 *           => @Autowired => 객체 주소값 주입
 *           => @RequiredArgsConstructor(lombok) => 생성자를 통해서 주입
 *     --------------------------------------------------------------------
 *       user = controller = service = mapper = db
 *       
 *    
 *    Spring - Boot
 *    1. 메인 클래스 실행
 *    2. Bean생성 + DI
 *    3. Controller 요청 처리
 *    4. Service
 *    5. SQL문장 => Repository
 *    6. 응답 => 브라우저 UI 갱신
 *              ------------- Pinia
 *       Spring-Boot
 *       => Spring프레임워크 기반의 빠른 애플리케이션 개발
 *       => 설정 최소화
 *       => 내장 서버(Tomcat)
 *          --------------- CI/CD
 *       => WebSocket / Security(JWT)
 *          MyBatis / JPA
 *          JSP / ThymeLeaf
 *       => SpringFrameWork(유지보수) => 전자정부프레임워크
 *       => 자바 / 오라클
 *          | 코틀린
 */
@Data
public class FoodVO {
	  private int fno,hit;
	  private String name,type,phone,address,theme,price,time,
	          parking,poster,images,content;
	  private double score;
}
