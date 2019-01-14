---
layout: post
title:  "Design a DB for the Facebook posting system."
date:   2018-03-22 03:34:07 +0900
categories: jekyll update
---


### In a basic way
- listing table
- listing data fields
<br>

### notice
1. In English
2. Share goole doc with
- jcnam@handong.edu
- 21300814@handong.edu
- 21500671@handong.edu
3. give 'Can Edit' access right
4. write in google doc and submit original
5. the title must be
HW1-21200574
6. name the current doc version right before due
File - Version History - Name current version
<br>

### Description
1. user는 자신의 계정에 posting할 수 있다.
2. 페북 페이지, 그룹 무시. 개인의 포스팅 시스템에만 집중
3. 다른 유저들, 친구들은 facebook 홈에서 post를 읽을 수 있다.
4. 댓글과 Like/Love/Haha/Wow/Sad/Angry 를 누를 수 있다.
5. 원작자가 허락한다면, share 가능하다
6. posting에 포함된 여러가지 기능
6-1. photo, video, live video, lifr event, emoji, tag friends......
6-2. who can see? - public, friends.....
<br>

### Evaluation Point
#### 1. 40% : schema
1-1. tables, fields(data type is optional)
1-2. explanations about schema

- **ArticleList(article_id, <u>board_id</u>, <u>user_id</u>, title, content, view_count, attached_file, category_id, write_date, modified_date, deleted_date, deleted)**
- ArticleList: This table is for a list of articles in a board system
- article_id: an unique article id.
- <u>board_id</u>: board_id from the BoardList table
- </u>user_id</u>: user_id of the author (user) who writes an article
...
- **User(<u>user_id</u>, name, user_type,...)**
- User: This table defines detailed user information.
- <u>user_id</u>: an unique user id
- name: user name
- user_type: User types such as student, faculty, and staff.
...
- **BoardList(<u>board_id</u>, board_title,...)**

**다른 relatd table들에도 같이 들어있는 connected data fields에 underline**
<br>

#### 2. Discussion
- 어려웠던 점
- 어떻게 해결했는지
- 내 DB의 단점
<br>

#### 3. Think about..
- redundancy
- performance
