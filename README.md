# Vending Machine App

자판기 앱 저장소

## STEP1. 음료수 클래스 설계

* 클래스 Beverage와 이를 상속한 Milk, SoftDrink, Coffee 구현
* 벤딩머신 클래스 구현 및 fill, stockList 기능 추가
* Date formatter 셋업 및 출력 문자열에 날짜 추가

### 개선한 내용

* 프로젝트 템플릿 코드 및 주석 삭제
* 클래스 당 하나의 파일에 작성되도록 수정
* stock list를 직접 생성하지 않고 Array.description을 사용하도록 변경
* DateFormatter가 아니라 Date를 확장하도록 변경
    * 그 안에서 DateFormatter를 이용하여 Date를 문자열로 변환하는 연산 프로퍼티도 구현
    * 외부에서는 연산 프로퍼티에만 접근하도록 변경
* 소프트드링크, 우유, 커피로 분류하지 않고 음료수별 각 서브클래스들을 직접 구현하도록 변경

**실행 결과**

![step1_result](step1_result.png)

