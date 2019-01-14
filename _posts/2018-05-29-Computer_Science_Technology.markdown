---
layout: post
title: "Computer Science Technology"
---

기술조사
===
<hr>
## - Open API
## - Open Source Software Development
## - Data Science
## - Deep Learning

<hr>
<br>

## 1. API
스마트폰의 등장으로 인해 앱 생태계가 생겨났다. 누구든 스마트폰에 개인이 필요한 앱을 선택하여 설치한다. 또한 개인도 쉽게 앱을 개발할 수도 있다. 이는 Open API의 등장으로 연결되었다. 대표적인 Open API는 "Google Map", "MS 빙맵", "SK플래닛 티맵", "페이스북 좋아요 기능" 등이 있다. 이 기능들은 누구나 사용할 수 있다. 네이버 또한 "네이버 Open API"를 운영하고 있다. 정부에서도 정부가 수집한 공공데이터를 Open API로 공개한 '국가 오픈데이터 포럼'을 출범했다. 이 모든 것을 혼자서 개발하고 제작하는 것은 쉽지 않으며 굉장히 많은 시간을 요구한다. 내가 아닌 다른 개발자가 만든 Open API를 잘 활용하면 많은 기능을 담은 양질의 애플리케이션을 쉽게 더 적은 시간을 들여 개발할 수 있다.

### 1.1. Definition

#### 1.1.1 API?
"Application Programming Interface"의 약자이다. 기본적으로 개발자라면 "MS Windows API", "Java API" 등은 이미 접해 보았을 것이다. Human Interface 가 UI 라면 API는 프로그램과 또 다른 프로그램을 연결해주는 일종의 다리의 역할을 한다. 개발자들에게 필요한 기능들을 추상화하고 Object, Class등을 제공하여 프로그래머가 특정 기술을 사용하기 쉽게 만들어준다.

#### 1.1.2 API, library, framework, Platform
- **Platform**
  - 판매자와 구매자 양쪽을 하나의 장으로 끌어들여 새로운 가치를 창출하는 것
  - IT에서는 여러가지 기능들을 제공하는 기반 기술환경, 공통 실행환경
  - 서드파티에 의해 개발된 것이 사용, 유통될 수 있는 환경/기술을 의미
- **Framework**
  - 특정 프로그램의 설계 청사진으로 일관된 방법론이나 설계를 제공하여 사용자(개발자)가 구현하고자 하는 목표를 쉽게 달성할 수 있도록 한다.
  - 설계에 필요한 기능(클래스, 함수)과 개발방법론들을 제공
  - 완성된 도구가 아니라는 점에서 라이브러리와 차별됨
- **Library**
  - 어떤 목표의 달성을 돕는 기능의 집합
  - 프레임워크와는 달리 완성된 형태이며 사용자(개발자)가 제공하는 기능을 수정/변경 하는 것은 어렵다.
- **API**
  - 서로 다른 목적으로 개발된 프로그램/라이브러리의 특정기능을 사용/호출 하기 위한 Interface. 기능 그 자체가 아니다. 기능 그 자체는 오히려 library나 프로그램이라고 생각할 수 있다.
  - 그래서 본인이 개발한 어떤 기능을 서비스하거나 라이브러리로 제공하기 위해서는 기능을 호출할 수 있는 명세(API)를 같이 제공해야 사용할 수 있다. API를 통해 소스코드는 공개하지 않으면서 특정 권한으로 프로그램/라이브러리의 기능을 사용할 수 있는 인터페이스를 제공한다.

비슷비슷하고 완전히 분리하기 어려워서 헷갈리는 개념들이다. API는 라이브러리와 다르지만 라이브러리를 받으면 해당 라이브러리를 쉽게 사용하기 위한 API가 따라온다. 하지만 API가 라이브러리를 의미하지는 않는다.

#### 1.1.3 Open API
API들 중에는 비용을 지불하고 사용해야 하는 것들도 있는 반며 누구나 사용할 수 있도록 공개되어 있는 API도 굉장히 많다. 학생의 경우는 API라 하면 거의 무료로 제공되는 Open API를 사용할 일이 많을 것이다.

#### 1.1.4 Examples
- 날씨 API
  - 내 프로그램에서 해당 API에 날짜/지역 정보를 전달
  - 해당 API에서 날씨 정보를 응답
- 페이스북 API
  - 스마트폰 게임에서 자신의 페이스북 계정에 업적 달성 글 남기기
  - 게임이 페이스북API를 사용해 글작성 요청
- 카카오톡에서 게임 친구 추가 요청
  - 게임이 카카오톡 API를 사용해 친구 추가 메세지를 보낼 것을 요청

<br>

### 1.2 API 구현방식

대표적으로 REST와 SOAP 두가지 방식이 있고 초기에는 SOAP방식이 많이 사용되었지만 REST방식의 소프트웨어 아키텍쳐 스타일이 제안된 후 SOAP방식의 표준이냐 REST방식의 간결함이냐의 선택에서 REST방식이 선호되고 있다.

#### 1.2.1 SOAP(Simple Object Access Protocol)

- 먼저 SOA는 기존 어플리케이션들의 기능들을 비즈니스적인 의미를 가지는 기능 단위로 묶어서 표준화된 호출 인터페이스를 통해 소프트웨어 컴포넌트 단위로 재조합한 후 해당 서비스를 서로 조합하여 업무 기능을 구현한 어플리케이션을 만들어내는 소프트웨어 아키텍쳐이다. 응용 프로그램 간에 연동을 목적으로 상호 이해 가능한 포맷의 메시지를 SOAP로 송수신함으로 원격지에 있는 서비스 객체나 API를 자유롭게 사용하고자 하는 기업의 요구에서 출발했다. SOAP은 일반적으로 널리 알려진 HTTP, HTTPS, SMTP 등을 통해 XML 기반의 메시지를 컴퓨터 네트워크 상에서 교환하는 프로토콜이다.
- C, C++ library
  - gSoap
  - cSoap
  - libSoap
- 장점
  - 언어, 플랫폼, 통신환경에 중립적
  - 분산 컴퓨팅 환경을 다루기 위해 설계
  - 웹서비스를 위해 보급된 많은 표준을 사용하여 구현할 수 있음
- 단점
  - 기본적으로 REST 방식보다 무거움
  - REST 방식보다 표준을 지키기위해 복잡성이 증가함
  - REST 방식에 비해 개발하기 어려움

#### 1.2.2 REST(Representational State Transfer)
- REST는 "웹에 존재하는 모든 자원(이미지, 동영상, DB 자원)에 고유한 URI를 부여해 활용"하는 것으로, 자원을 정의하고 자원에 대한 주소를 지정하는 방법론을 의미한다고 한다. 따라서 Restful API는 REST 특징을 지키면서 API를 제공하는 것을 의미한다.
- 구성
  - 자원 (Resouce) - URI
  - 행위 (Verb) - HTTP Method
  - 표현 (Representations)
- 사용예
  - /users GET
  - /users/{id} GET
  - /users PUT
- 장점
  - 언어, 플랫폼에 중립적
  - SOAP에 비해 개발하기 단순함
  - 웹에 가까운 설계와 철학으로 간결함
- 단점
  - point-to-point 통신 모델에 한해 구현되어 둘 이상을 대상으로 상호작용하는 분산환경에는 유용하지 않음
  - 보안, 정책 등에 대한 표준이 없음
  - 오직 HTTP 통신 모델에 의존함

<br>

### 1.3 API 결과 제공 방식
XML 또는 JSON 방식으로 결과가 제공된다.
XML과 JSON 모두
  - 데이터의 저장과 전달을 위해 고안됨
  - 계층적인 구조를 가짐
  - 프로그래밍 언어에 의해 parsing될 수 있다.
  - XMLHttpRequest 객체를 이용하여 서버로부터 데이터를 전송받을 수 있습니다.

#### 1.3.1 XML
- EXtensible Markup Language
- HTML과 매우 비슷한 문자 기반의 마크업 언어
- 데이터를 저장하고 전달할 목적으로 만들어짐
- XML 태그는 HTML 태그처럼 미리 정의되어 있지 않고, 사용자가 직접 정의할 수 있음
- XML DOM(Document Object Model)을 이용하여 해당 문서에 접근
- 장점
  - Tag구조로 작성하기 간편함
  - 사람이 직접 데이터를 읽기 쉬움
  - DTD등 XML자체의 기능을 확장할 여지가 많음
- 단점
  - Tag의 규정으로 실 데이터 이상의 문서의 양이 많이 필요함
  - 배열구조, 반복구조일 경우 불필요한 데이터가 계속 나타남
  - 데이터의 파싱이 JSON에 비해 느려짐

#### 1.3.2 JSON
- JavaScript Object Notation
- javascript를 위한 것이고 객체 형식으로 자료를 표현하는 것이다.
- 문자열을 전송받은 후에 해당 문자열을 바로 파싱하므로, XML보다 더욱 빠른 처리 속도를 보여줌
- HTML과 자바스크립트가 연동되어 빠른 응답이 필요한 웹 환경에서 많이 사용됨
- 데이터를 받아서 객체나 변수로 할당해서 사용하기 위해 사용
- AJAX를 사용해 데이터를 주고 받을 때 그 사용되는 데이터 포맷
- 전송받은 데이터의 무결성을 사용자가 직접 검증해야 해서 데이터의 검증이 필요한 곳에서는 스키마를 사용하여 데이터의 무결성을 검증할 수 있는 XML이 아직도 많이 사용되고 있음.
- 장점
  - 내용이 함축적으로 최소한의 정보만을 가짐
  - XML에 비해 전체 데이터의 용량이 크게 줄고 파싱속도도 빠름
  - 구조상 파싱이 매우 간편하고, 객체구조와 배열구조의 조합으로 효율적인 데이터 구성이 가능
- 단점
  - 내용이 함축적이다 보니 내용의 의미파악이 힘들수 있음
  - XML에 비해 적은규격의 데이터 전송엔 적합하지만 대용량의 데이터 송수신엔 부적합함

<br>
### 1.4 Open API 사용
1. Open API 검색 및 이용방법 확인
![using_api_1](/img/2018-05-29-Computer_Science_Technology_Using_API_01.gif){:class="img-responsive"}
2. Open API 인증키 신청
![using_api_2](/img/2018-05-29-Computer_Science_Technology_Using_API_02.gif){:class="img-responsive"}
3. 서비스 정보 및 서버 정보 입력![using_api_3](/img/2018-05-29-Computer_Science_Technology_Using_API_03.gif){:class="img-responsive"}
4. Open API 승인 확인 후 인증키 저장
![using_api_4](/img/2018-05-29-Computer_Science_Technology_Using_API_04.gif){:class="img-responsive"}

<br>

### 1.5 Restrictions
1. 이용제한의 경우
  - 상업적 이용이 불가능한 API에 대해 상업적 활용한 경우
  - 트래픽 초과로 인해 시스템에 부하가 발생할 경우
  - 공공의 목적이 아닌 기타 개인적 혹은 불법적 목적으로 사용하는 경우
 
2. 공공 데이터 포털
  - 전자 바우처 시스템에서 제공하는 모든 OpenAPI 는 공공데이터 포털을 이용합니다.
  - 활용자는 공공 데이터 포털에 먼저 가입 하신 이후에 활용신청을 하고 인증키를 발급 받아야 합니다.


<br>

### 1.6 Providers

- [공공 데이터 포털 API](https://www.data.go.kr)
https://www.data.go.kr

- [Kakao API](https://developers.kakao.com)
https://developers.kakao.com

- [Naver API](https://developers.naver.com)
https://developers.naver.com

- [Google API](https://developers.google.com)
https://developers.google.com

- [Amazon API](https://developer.amazon.com/)
https://developer.amazon.com/

- [Ebay API](https://go.developer.ebay.com/)
https://go.developer.ebay.com/

- [개방海 API (해양공간)](https://khoa.go.kr)
https://khoa.go.kr

- [Vworld API (2D, 3D 공간정보데이터)](https://vworld.kr)
https://vworld.kr

- [Programmableweb](https://www.programmableweb.com/apis)
https://www.programmableweb.com/apis

- [Kong](https://konghq.com/)
https://konghq.com/

<br>
<br>

## 2. Open Source Software Development







<br>
<br>


## 3. Deep Learning

### 3.1 AI(Arfiticial Intelligence)
기계가 나타내는 지능. 인간의 지능의 일부 또는 전체를 기계로(인공으로) 구현한 것. 인공지능이라는 용어는 1956년에 미국 다트머스의 한 학회에서 존 매카시가 사용했다. 20세기 중반 컴퓨터 발달로 연구가 활발해지다가 1970년대 하드웨어의 한계로 투자가 줄어들었다. 최근 하드웨어의 발달과 데이터의 양과 접근성이 높아지면서 다시 연구에 박차를 가하기 시작했다.

<br>

### 3.2 기계 학습(Machine Learning)
머신 러닝은 "컴퓨터가 해야 할 일을 명시적으로 프로그래밍하는 것이 아니라 작업 수행 방법을 학습을 할 수 있는 능력을 부여하는" 컴퓨터 과학의 하위 분야이다. 데이터를 분석하고 학습하며, 학습한 내용을 토대로 판단과 예측을 한다. 

**Machine Learning 방식들**
- Supervised Learning(지도학습)
  - input과 label을 이용 - 분류, 회귀
- Unsupervised Learning(비지도학습)
  - input만을 이용 - 군집화, 압축
- Reinforcement Learning(강화학습)
  - input, reward

<br>

### 3.3 ANN
- Neural, 뉴런이란 생물학적으로는 신경계의 구조적, 기능적 단위로서써 신경단위 또는 신경원이라고도 한다. 신경세포와 거기에서 나온 돌기를 합친 것이다. 외부의 자극에 따라 뉴런과 뉴런 사이 상호작용이 일어난다. 그 과정에서 뉴런과 뉴런사이에 시냅스가 더 생기기도 하고 뉴런들이 숙련되면서는 신경망 최적화를 통해 시냅스의 수가 줄어들기도 한다.
- ANN은 Artificial Neural Network의 약자로 인공신경망이란 의미이다. 인공 신경망은 말그대로 실제 뉴런, 신경망의 동작을 본따 만들어진 인공 신경망이다. 이는 인간의 뇌가 지닌 생물학적 특성, 특히 뉴런의 연결구조로부터 영감을 얻은 것이다. 데이터에 근거하여 데이터를 잘 구분할 수 있는 신경망을 만들어간다. 데이터를 여러가지 관점에서 바라보면서 구분해보고 구분해 본 결과를 합하고 왜곡하고 지우고 수정하고를 반복하여 기계가 스스로 복잡한 데이터를 구분할 수 있게 하는 신경망을 만들어간다.

<br>


### 3.4 Deep Learning
- 실제로 인간의 뇌는 물리적으로 근접해 있는 어떤 뉴런이든 상호 연결이 가능하다. 하지만 인공 신경망은 레이어 연결 및 데이터의 전파 방향이 일정하다. 딥러닝은 인공신경망에서 발전한 형태의 인공지능으로, 뇌의 뉴런과 유사한 정보 입출력 계층을 활용해 데이터를 학습한다. 처음에는 굉장히 많은 연산량을 하드웨어가 따라오지 못하는 탓에 연구가 부진했지만, 현재는 하드웨어의 발달과 병렬 연산에 최적화된 GPU의 등장으로 딥러닝 기반 인공 지능의 등장이 가능케 했다.

<br>



### 3.5 Deep learning Application
- 컴퓨터 비젼
  - 사람 얼굴 인식
  - 흑백 사진과 영상에 색 복원하기
  - 픽셀 복원: 저해상도 이미지를 고해상도 이미지로 복원
  - 사진에 대한 설명하기. 사진 속 요소들을 분류, 사진의 내용
  - 사진 속 사람의 시선 바꾸기
  - 실시간 행동 분석
- 패턴 인식
  - 번역
  - 새로운 이미지 만들기
  - 텍스트 읽기
  - 태양광을 통한 절약 효과 예측하기: 'Google Sunroof' 팀에서 사용
- 컴퓨터 게임, 로봇 자율 주행차
  - 게임
  - 자율주행 차량(Tesla): 물체, 도로, 사람 등 인식
  - 로보틱스
- 소리
  - 음성 생성
    - 구글의 'WaveNet'
    - BaiDu의 'Deep Speech'
  - 작곡
    - Francesco Marchesani
      - 쇼팽의 음악 특유의 패턴과 통계 정보를 바탕으로 학습
  - 비디오의 소리 복원
    - 음소거한 영상의 소리를 복원해 내는 작업.
    - 옥스포드와 구글의 'LipNet': 93%의 성공률을 기록
  - 미술
    - 유명 화가의 작품 따라하기
      - DeepArt.io
- 아티클, 논문, 프로그래밍 코드 작성
- 손글씨
- 인구 통계 및 선거 결과 예측
- 딥러닝 네트워크를 생성하는 딥러닝 네트워크
  - Neural Complete
    - 새로운 딥러닝 네트워크를 생성할 수 있는 학습 코드
- 지진 예측

<br>



### 3.6 Deep learning in companies
- Deep-bio
  - 딥러닝을 이용한 의료용 소프트웨어 제작
- 스트라드비전
  - 딥러닝을 이용한 컴퓨터 비전 연구
  
<br>



### 3.7 Library for Deep learning
- Python
  - Theano : 수식 및 행렬 연산을 쉽게 해줌
    - Keras, Pylearn2, Lasagne, Blocks
  - Chainer
  - nolearn
  - Gensim
  - deepnet
  - CXXNET
  - DeepPy: NumPy 기반
- Matlab
  - MatConvNet
  - ConvNet: CNN 라이브러리
  - DeepLearnToolbox
- C++
  - Caffe: 현재 가장 많은 사람들이 사용하고 있는 것으로 추정됨. python과 Matlab 인터페이스도 잘 구현되어 있음
  - DIGITS: NVIDIA에서 브라우저 기반 인터페이스로 쉽게 신경망 구조를 구현, 학습, 시각화할 수 있도록 개발한 시스템
  - cuda-convnet
  - eblearn
  - SINGA
- JAVA
  - ND4J: N-Dimensional Arrays for Java. JVM을 위한 과학 연산 라이브러리. 연산들이 최소한의 메모리 사용으로 빠르게 작동하게끔 만들어짐
  - Deeplearning4j: Java와 Scala로 작성된 첫 상용 수준의 오픈소스 분산처리 딥러닝 라이브러리. 개발툴보다는 business 환경에 적합
  - Encog: 머신러닝 프레임워크로 SVM, ANN, Genetic Programming, Genetic Algorithm, Bayesian Network, Hidden Markov Model 등을 지원
- JavaScript
  - ConvnetJS: 딥러닝 모델의 학습을 온전히 브라우저에서 가능. 별도의 SW, 컴파일러, GPU 필요없음
  - RecurrentJS - RNN/LSTM을 구현한 Javascript 라이브러리

<br>



### 3.8 Framwork for Deep learning
- TensorFlow
  - Google Brain에서 개발
  - 가장 인기 있는 라이브러리 중 하나
  - 오픈소스
  - python기반이지만 C++, R도 가능
- Theano
  - python 기반
  - CPU와 GPU의 수치계산에 유용함
  - 다른 확장 학습 프레임워크와 달리 확장성이 뛰어나진 않음
  - 다중 GPU 지원 부족
- Keras
  - 단순화된 인터페이스
  - 매우 가볍고 비교적 쉽게 배울 수 있음
- Caffe
  - 표현, 속도, 모듈성에 focus
  - CNN을 모델링할때 사용
  - Caffe Model Zoo에서 미리 훈련된 네트워크 사용 가능
- Torch
  - 페이스북, 트위터, 구글.... 에서 사용
  - CUDA




<br>
<br>
<br>


<hr>

#### 출처

1. "모바일 시대, 이제는 오픈 API 시대다," IT DongA, 2013-07-15 수정, 2018-05-30 접속, http://it.donga.com/15306/.

2. "[용어 뜻/설명] API란?" 네이버 블로그, 2016-06-30 수정, 2018-05-30 접속, https://m.blog.naver.com/azure0777/220749852024.

3. "API란?" Medium, n.d. 수정, 2018-05-30 접속, https://medium.com/@dydrlaks/api-%EB%9E%80-c0fd6222d34c.

4. "개방海," 오픈 API란?, n.d. 수정, 2018-05-30 접속, http://www.khoa.go.kr/oceanmap/apiguide/html/chapter01.html.

5. "#ashcode," 플랫폼, 프레임워크, 라이브러리, API에 대한 이해, 2016-05-14 수정, 2018-05-30 접속, https://hashcode.co.kr/questions/1838/%ED%94%8C%EB%9E%AB%ED%8F%BC-%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC-%EB%9D%BC%EC%9D%B4%EB%B8%8C%EB%9F%AC%EB%A6%AC-api%EC%97%90-%EB%8C%80%ED%95%9C-%EC%9D%B4%ED%95%B4.

6. "TCPSchool," JSON과 XML, n.d. 수정, 2018-05-30 접속, http://tcpschool.com/json/json_intro_xml.

7. "쉽게 풀어쓴 딥러닝(Deep Learning)의 거의 모든 것," T-Robotics, 2015-05-22 수정, 2018-06-17 접속, http://t-robotics.blogspot.com/2015/05/deep-learning.html#.WyYT2RIzbOR.

8. "인공 지능과 머신 러닝, 딥 러닝의 차이점을 알아보자," NVIDIA, 2016-08-03 수정, 2018-06-17 접속, http://blogs.nvidia.co.kr/2016/08/03/difference_ai_learning_machinelearning/.

9. "딥러닝의 30가지 적용 사례," Brunch, 2017-10-28 수정, 2018-06-17 접속, https://brunch.co.kr/@itschloe1/23.

10. "프로그래밍 언어별 딥러닝 라이브러리 정리," Team AI Korea, 2015-11-10 수정, 2018-06-17 접속, http://aikorea.org/blog/dl-libraries/.


<!--
1. 개념과 정의
2. 핵심내용
3. 연구분야
4. 활용사례
5. 과거에서 현재까지의 히스토리
6. 앞으로 발전방향
7. 관련업무 회사명 리스트(2개)
8. 관련특허 링크
9. 참고자료 링크 -->



<!--
**전산**
Secure coding
Self-Driving 기술
Security(4)
클라우드 보안
알고리즘
반도체 8대 공정
IoT,사물인터넷(6)
블록체인
API
영상처리(Computer Vision)
데이터 과학 분야
딥러닝(6)
독거노인
음성인식(2)
음성합성
블록체인(6)
PID 제어기술
자율주행
로봇
WebApp(hybrid,native)
LBS(Location-based service)
serverless
고속
고해상도
고집적도
AI(인공지능)(4)
MR(혼합현실)
3D 프린팅
PWA(2)
hadoop
software engineering
software education
hive
머신러닝(3)
빅데이터(3)
가상현실(VR) & 증강현실(AR)(5)
애플리케이션 성능관리(APM)
비즈니스 인텔리전스(BI)
데이터사이언스
어플리케이션 개발
firebase
ionic
angularJS
SDSoc
BCI(Brain Computer Interface)(2)
웹서비스
임베디드 시스템
프론트엔드
프레임워크
백엔드

**전자**
FPGA 하드웨어 가속기
NMT(2)
신호 처리 및 통신
반도체(4)
디스플레이
회로
통신
lap on a chip(2)
3D reconstruction(5)
저전력소비
kinect
집적회로
Machine translation
Audio Signal processing
Humor & Sarcasm Detection
parallel computation using FPGA
high-level synthesis
circuits for approximate computing
NLP using Deep Learning techniques (Word2vec, language modeling)
Speech2text with RNN-->
