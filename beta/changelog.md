# beta-131 (2015-07-17)

- (Fixed) UpdateURL과 관련한 보안 문제 수정.

이전 버전에서는 /var/mobile/Library/Preferences/BackOn/UpdateURL 파일에 악성 바이너리의 다운로드 링크가 포함된 zip을 기록해놓고 BackOn의 업데이트 기능을 실행하면 악성 바이너리가 바로 자동으로 실행되어 문제가 있다고 판단하여 /var/mobile/Library/Preferences/BackOn/UpdateURL를 지웠습니다.

따라서 DevSettings에서 UpdateURL 변경은 여전히 가능하나, BackOn을 재실행하면 해당 값은 초기화됩니다.
아직까지 악용사례는 없지만 혹시나 해서 수정했습니다.

# beta-136 (2015-07-18)

- (Added) Library를 모두 백업할 때 경고 문구 추가.

![이미지](https://farm1.staticflickr.com/553/19591699779_bc7cd92b3a_o.png)

Library를 모두 복원하는 것은 무한사과 (부팅불가)의 위험이 있어서 예전부터 추천하지 않은 기능인데, 제가 별다른 문구를 안 넣어서 무한사과에 걸리신 분이 계시더군요.

따라서 이번 업데이트에서 경고 문구를 추가했습니다. 가급적이면 Library를 복원할 때 시스템에 큰 영향을 끼치는 파일은 복원하지 않았으면 합니다.

# beta-142 (2015-07-20)

- (Added) (DevSettings) DevSettings에서 UpdateURL 변경을 못하도록 잠금.

![이미지](https://farm1.staticflickr.com/288/19825383876_2c03de6a18_o.png)

보안 문제때문에 비밀번호를 걸어놨습니다.

- (Added) (DevSettings) detailFileListView 추가

![이미지](https://farm4.staticflickr.com/3731/19663590028_591cc3d425_o.png)

▲ detailFileListView 끔

![이미지](https://farm1.staticflickr.com/400/19856592451_6dc83e1f52_o.png)

▲ detailFileListView 켬

원래는 showLog에 병합되어 있던 부분인데 detailFileListView로 따로 분리했습니다.

- (Fixed) 백업 작업 경로 변경

원래는 /tmp/BackOn/**백업이름**이 작업 경로였는데, /tmp/BackoOn/backup/**백업이름**으로 변경했습니다.