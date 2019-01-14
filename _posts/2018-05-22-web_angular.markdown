---
layout: post
title: "web-angular"
---

web-error
===

### core.js:1440 ERROR Error: Uncaught (in promise): InvalidCharacterError: Failed to execute 'setAttribute' on 'Element': '0' is not a valid attribute name. Error: Failed to execute 'setAttribute' on 'Element': '0' is not a valid attribute name.


#### 일반적으로 실수로 HTML에 ';'가 들어가 있다던지 하는 경우가 많다고 함. 나는 다음과 같은 경우 였음

~~~ HTML
 <hr width=70 align=left>
~~~
원래 위와 같이 되어있었어야 하는데 작업 중 실수로 들어갔는지

~~~ HTML
 <hr width=7 0 align=left>
~~~
위와 같이 되어 있었다. 그래서
```'Element': '0' is not a valid attribute name.```라고 떴는듯


### query 오타 실수

#### error message:

~~~ javascript
/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Parser.js:80
        throw err; // Rethrow non-MySQL errors
        ^

Error: ER_PARSE_ERROR: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city_no='120'' at line 1
    at Query.Sequence._packetToError (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/sequences/Sequence.js:52:14)
    at Query.ErrorPacket (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/sequences/Query.js:77:18)
    at Protocol._parsePacket (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Protocol.js:279:23)
    at Parser.write (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Parser.js:76:12)
    at Protocol.write (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Protocol.js:39:16)
    at Socket.<anonymous> (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/Connection.js:103:28)
    at Socket.emit (events.js:160:13)
    at addChunk (_stream_readable.js:269:12)
    at readableAddChunk (_stream_readable.js:256:11)
    at Socket.Readable.push (_stream_readable.js:213:10)
    --------------------
    at Protocol._enqueue (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Protocol.js:145:48)
    at Connection.query (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/Connection.js:208:25)
    at Query._callback (/Users/IK/Project/BonVoyage/BackEnd/routes/travel.js:129:20)
    at Query.Sequence.end (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/sequences/Sequence.js:88:24)
    at Query._handleFinalResultPacket (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/sequences/Query.js:139:8)
    at Query.EofPacket (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/sequences/Query.js:123:8)
    at Protocol._parsePacket (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Protocol.js:279:23)
    at Parser.write (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Parser.js:76:12)
    at Protocol.write (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/protocol/Protocol.js:39:16)
    at Socket.<anonymous> (/Users/IK/Project/BonVoyage/BackEnd/node_modules/mysql/lib/Connection.js:103:28)

  ~~~

  원인은 알아서 찾아보자
  ~~~ javscript
  var sql2 = "SELECT name FROM BonVoyage.city"
            + " WEHRE city_no=? ;" ;
  ~~~

오탈자 확인은 필수.....


### typescript

#### 평소에 다루던 언어인 C, Java 등과는 달리 data type이 비교적 자유롭다. 하지만 이로 인해 헷갈리는 상황이 생기기도 했다. 물론 내가 기초가 없는 것이 더 큰 이유....

~~~ html
<button (click)="toPrevPostPage(1)">prev</button>
~~~
html에서 위와 같이 보내고 parameter를 보내고

~~~ typescript
toNextPostPage( board_type: any ) {

  console.log("board_type: ", board_type) ;
  switch ( board_type ) {
    case '1': {
      console.log("board_type = 1",board_type) ;
      post_cnt = this.user_travel_cnt ;
      break;
    }
    case '2': {
      post_cnt = this.user_wish_cnt ;
      break;
    }
    case '3': {
      post_cnt = this.user_review_cnt ;
      break;
    }
    default: {
      break;
    }
  }
}
~~~

parameter를 board_type 이라는 변수로 받았는데 console.log() 부분까지는 잘 출력되는데도 post_cnt가 계속 undefined으로 뜬다.

#### 잘못된 점
toPrevPostPage(1) 에서는 parameter를 int로 보내주고 function의 switch문에서는 string으로 인식하려했다.

#### 해결방법 1
~~~ html
<button (click)="toPrevPostPage('1')">prev</button>
~~~

#### 해결방법 2
~~~ typescript
toNextPostPage( board_type: any ) {

  console.log("board_type: ", board_type) ;
  switch ( board_type ) {
    case 1: {
      console.log("board_type = 1",board_type) ;
      post_cnt = this.user_travel_cnt ;
      break;
    }
    case 2: {
      post_cnt = this.user_wish_cnt ;
      break;
    }
    case 3: {
      post_cnt = this.user_review_cnt ;
      break;
    }
    default: {
      break;
    }
  }
}
~~~

자료형이 자유로워서 따로 지정해줄 필요도 없고 에러메세지도 안뜨지만 그렇다고 다 되는 것이 아니다
