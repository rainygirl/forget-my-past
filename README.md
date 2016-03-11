과거 세탁 프로젝트
==================

소개
----

forget-my-past (과거 세탁) 프로젝트는 트위터 과거 트윗을 삭제하기 위한 스크립트입니다. Ruby 공부를 겸한 습작으로 2013년 만들었다가, 2016년 경 당장 써야해서 그냥 Python으로 바꿔버렸습니다.

'과거 세탁 프로젝트' 이름은 @hongminhee 님이 지어주셨습니다.

왜 만들었나요?
--------------

내뱉은 말을 지우개로 지우기 위해서입니다 (.....) 까마득히 기억도 안나는 과거에 나도 모르게 우리민족끼리를 리트윗했을지도 모르고...

어떻게 작동시키죠?
------------------

개발자가 아니시라면, Python 만질 줄 아는 개발자에게 이 스크립트를 쓸 수 있게 해달라고 부탁하면 됩니다.

트위터 Settings > Your Twitter archive 에 있는 Send Email 버튼을 누르고, 이메일로 배달되는 압축파일에서 tweets.csv 를 가져와 run.py 와 같은 디렉토리에 두고 터미널에서 python run.py 를 실행시키면 됩니다. Settings 메뉴에 해당 버튼이 없다면 언어설정을 English로 바꾸면 버튼을 찾을 수 있습니다.

dev.twitter.com 에서 Application 을 하나 만든 뒤 consumer key, consumer secret, access token, access token secret 을 받으셔야하고, read/write 권한을 모두 획득하여야 합니다.
