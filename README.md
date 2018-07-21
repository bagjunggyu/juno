elementary OS 5.0 Juno를 설치하고 난 후 제가 처음에 해주는 몇 가지 작업들을 스크립트로 만들었습니다.
cd && wget https://github.com/bagjunggyu/juno/archive/master.zip
unzip master.zip && mv ~/juno-master/juno.sh . && rm master.zip && rm -r ~/juno-master
sh juno.sh
