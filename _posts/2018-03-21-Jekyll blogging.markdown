---
layout: post
title:  "How to jekyll"
date:   2018-03-21 03:34:07 +0900
categories: jekyll update
---

What is 'Jekyll'?
---
- **Jekyll** 이란 Markdown 형식의 텍스트 파일을 HTML 파일로 변환해 주는 하나의 변환도구이다.
- Markdown 형식의 텍스트 파일을 작성하고 그 파일을 HTML로 변환한다. 다시 말해서, Markdown 형식으로 작성하고 Jekyll로 빌드해서 웹 서버에 올리면 된다.
- GitHub Pages 에서는 Jekyll을 자체 지원한다. GitHub Pages에 Markdown 문서를 올리면 자동으로 HTML로 바꿔준다. 그래서 블로그 호싕 서비스로 GitHub Pages를 사용할 경우, GitHub Pages에 새로운 Markdown 문서를 올리기만 하면 블로그를 자동로 업데이트할 수 있게 된다.


[=> source : Jekyll 기반의 GitHub Pages에 블로그 만들기 ](http://xho95.github.io/blog/github/jekyll/git/2016/01/11/Make-a-blog-with-Jekyll.html)


<br>

### 1. Jekyll blog 만들기

#### 1.1 두가지 방법
- GitHub page는 'Jekyll Theme Chooser'라는 것을 사용하여 Jekyll을 설치하지 않고도 블로그를 제작하고 편집할 수 있는 방법 제공한다.
- 컴퓨터에 직접 Jekyll을 설치하여 블로그를 만드는 방법이 있다.

#### 1.2 Package 관리
- Jekyll 자체가 하나의 Ruby package이다.
- Gem : Ruby의 package 관리
- Ruby, bunlder, bundle, Gem, Gemfile



### 2. Kramdown, Markdown

#### 2.1 markdown

**markdown** 이란 간단한 자체 표기법을 사용해 텍스트를 작성하고 쉽게 다른 HTML 등으로 생성하게 해주는 방법이다. 하지만 표준화되어있지 못해서 PHP Markdown Extra, Multimarkdown, Github Flavored Markdown(GFM) 등으로 파편화가 진행되고 있다.

Github page를 jekyll기반으로 생성하면서 고려할 마크다운은 kramdown이라는 종류다. jekyll자체는 마크다운 플러그인으로 다양한 마크다운 종류를 선택하여 사용 할 수 있지만 Github page에서는 작년 5월부터 kramdown만 지원하는 것으로 하였다. 기존에 사용되던 redcarpet방식은 더이상 지원하지 않기 떄문에 블로그 활동을 원활하기 위해 개인적으로 **kramdown 문법을 정리해 보기로 하였다.**

[=> source : kramdown 작성하기](http://gjchoi.github.io/env/Kramdown(%EB%A7%88%ED%81%AC%EB%8B%A4%EC%9A%B4)-%EC%82%AC%EC%9A%A9%EB%B2%95/#%EB%AC%B8%EB%8B%A8-%EB%AC%B8%EB%B2%95-paragraphs)
<br>

#### 2.2 syntax

#####나는 알고리즘을 공부한다.
=> 마크다운은 ##과 텍스트 사이에 띄어쓰기를 안해야 한다.
##### 나는 알고리즘을 공부한다.
=> Kramdown은 ##과 텍스트 사이에 띄어쓰기를 해야 한다.

---


### 3. post

- 모든 post들은 \_posts 디렉토리 안에 들어간다.

- 모든 Jejyll post의 가장 첫부분은 YAML 형식의 front matter 로 시작된다.
  - front matter
    - pelims, preliminary matter
    - 보통 책의 전문, 머리말, 차례 등을 일컬음
  - YAML
    - 구조화 데이터나 오브젝트를 문자열로 변환하기 위한 데이터 형식의 한 종류.
    - YAML은 YAML Ain't Markup Language 앞자리로 구성되어 있다.
    - 인간이 읽기 쉽도록 설계되었으며 Data serialization 표준이라고 자부할 만큼 리스트, 해쉬 데이터구조 직렬화에 강하다.

- **title naming**

``YYYY-MM-DD-post_title.markdown``의 형식을 지킬것

```
2018-03-21-post_title.markdown
```

- terminal 창에 다음의 command 입력

```
MackbookPro$ bundle exec jekyll serve
```
=> http://localhost:4000/ 에서 확인 가능하다

<br>


### Error

- #### gem install 할때

~~~ bash
$ sudo gem install jekyll
Password:
ERROR:  While executing gem ... (Gem::FilePermissionError)
    You don't have write permissions for the /usr/bin directory.
~~~
Mac OS의 system ruby가 설치되어 있는 폴더가 ``rootless``기능으로 인해 sudo 권한으로도 접근할 수 없게 되어있음.
``rootless``: El Capitan에서 추가된 기능으로, 사용자나 일개 응용 프로그램이 시스템 파일을 삭제하거나 변조할 수 없도록 '커널 레벨'에서 파일을 잠그는 강력한 보안 기능. User가 관리자 궈한을 가지고 있어도 시스템 파일을 맘대로 건드릴 수 없도록 차단.
[Ref1]: https://blog.jungbin.kim/jekyll/2016/11/28/start-to-jekyll.html
[Ref2]: http://macnews.tistory.com/3408

<br>

- #### github 페이지에는 분명히 다 업로드 되었는데 웹페이지에서는 post들이 나타나지 않는 경우

~~~ bash
$ jekyll serve
~~~
하여 localhost:4000에서 확인한다.

~~~ bash
$ jekyll build
~~~
build error가 나서 파일은 github에 올라가 있어도 build가 안되서 웹페이지 상에는 올라가지 않은 경우가 있을 수 있다.

나의 경우는 front matter에 date가 아래와 같이 비워져 있어서 error가 나서 계속 build가 안되고 그래서 웹페이지상에 올라가지 않은 경우였다.

~~~ YAML
layout: post
title :  "How to jekyll"
date  :
~~~
