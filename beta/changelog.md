# beta-131 (2015-07-17)

- (Fixed) UpdateURL과 관련한 보안 문제 수정.

이전 버전에서는 /var/mobile/Library/Preferences/BackOn/UpdateURL 파일에 악성 바이너리의 다운로드 링크가 포함된 zip을 기록해놓고 BackOn의 업데이트 기능을 실행하면 악성 바이너리가 바로 자동으로 실행되어 문제가 있다고 판단하여 /var/mobile/Library/Preferences/BackOn/UpdateURL를 지웠습니다.

따라서 DevSettings에서 UpdateURL 변경은 여전히 가능하나, BackOn을 재실행하면 해당 값은 초기화됩니다.
아직까지 악용사례는 없지만 혹시나 해서 수정했습니다.

# beta-136 (2015-07-18)

- (Added) Library를 모두 백업할 때 경고 문구 추가.

![이미지](https://farm1.staticflickr.com/553/19591699779_bc7cd92b3a_o.png)

▲ 경고 문구를 추가한 화면

Library를 모두 복원하는 것은 무한사과 (부팅불가)의 위험이 있어서 예전부터 추천하지 않은 기능인데, 제가 별다른 문구를 안 넣어서 무한사과에 걸리신 분이 계시더군요.

따라서 이번 업데이트에서 경고 문구를 추가했습니다. 가급적이면 Library를 복원할 때 시스템에 큰 영향을 끼치는 파일은 복원하지 않았으면 합니다.

# beta-142 (2015-07-20)

- (Added) [DevSettings] DevSettings에서 UpdateURL 변경을 못하도록 잠금.

![이미지](https://farm1.staticflickr.com/288/19825383876_2c03de6a18_o.png)

▲ 비밀번호 잠금 적용 화면

보안 문제때문에 비밀번호를 걸어놨습니다.

---

- (Added) [DevSettings] detailFileListView 추가

![이미지](https://farm4.staticflickr.com/3731/19663590028_591cc3d425_o.png)

▲ detailFileListView 끔

![이미지](https://farm1.staticflickr.com/400/19856592451_6dc83e1f52_o.png)

▲ detailFileListView 켬

원래는 showLog에 병합되어 있던 부분인데 detailFileListView로 따로 분리했습니다.

---

- (Fixed) 백업 작업 경로 변경

원래는 /tmp/BackOn/**백업이름**이 작업 경로였는데, /tmp/BackOn/Backup/**백업이름**으로 변경했습니다.

# beta-144 (2015-07-20)

- (Added) official/unofficial 표기 추가.

>- official : 제가(원 개발자) 만든 BackOn입니다.

>- unofficial : 다른 사람이 BackOn을 수정한 것입니다.

BackOn을 수정해서 배포할 땐 **'TOOL_RELEASE'**에 unofficial 표기를 해주세요.

현재 여기서 배포하고 있는 BackOn은 official입니다.

# beta-146 (2015-07-21)

- (Added) '지울 백업 파일이 없습니다!' 문구에 빨간색 적용.

![이미지](https://farm1.staticflickr.com/436/19878511862_7590614063_o.png)

▲ 빨간색 적용 화면

# beta-147 (2015-07-26)

- (Fixed) 오타 수정.

# beta-148 (2015-07-27)

- (Fixed) 오타 수정.

# beta-155 (2015-07-31)

- (Added) 업데이트할 때 deb 파일로 업데이트하는 기능 추가.

이제 업데이트할 땐 deb 파일을 설치하는 방식으로 바꼈습니다. deb 파일로 설치하지 않고 이전 방식의 설치 방식(바이너리만 업데이트)으로 이용하려면 DevSettings에서 **updateWithDEBInstall** 설정값을 비활성화시키면 됩니다.

참고로 alpha 빌드는 deb 파일을 제공하지 않으므로 이전 설치 방식 (바이너리 업데이트)로 업데이트가 진행됩니다.

# beta-156 (2015-07-31)

- (Fixed) beta 빌드인데 alpha 빌드로 표기되던 버그 수정.

# beta-158 (2015-07-31)

- (Fixed) DevSettings 오류 수정.

# beta-160 (2015-07-31)

- (Fixed) DevSettings 오류 수정 (2).

# beta-171 (2015-07-31)

- (Added) Cydia 소스, 패키지 복원 중에 현재 상황을 상세히 알려주는 문구 추가.

![이미지](https://farm1.staticflickr.com/366/20168329571_d170d133c6_o.png)

▲ 이렇게.

---

- (Fixed) 업데이트 기능 관련 수정.

# beta-173 (2015-08-01)

- (Fixed) 버그 수정.

# beta-182 (2015-08-04)

- (Fixed) 오타 수정.

- (Fixed) DevSettings 관련 기능 추가. (completeLibraryBackup, fixDynamicLineIssue)

# beta-185 (2015-08-04)

- (Fixed) 오타 수정.

# beta-188 (2015-08-04)

- (Fixed) 오타 수정.

# beta-198 (2015-08-07)

- (Fixed) Updater 관련 코드 수정.

# beta-207 (2015-08-07)

- (Fixed) 코드 수정.

# beta-214 (2015-08-10)

- (Fixed) 코드 정리.

- (Fixed) 홈에서 업데이트 확인 기능 제거.

# beta-259 (2015-10-25)

- (Fixed) showLog가 기본적으로 YES로 켜짐.

이 부분에 대해 말이 많아서 기본적으로 켜지도록 했습니다. DevSettings에서 끌 수 있습니다.

- (Fixed) Cydia 및 Library 백업이 제대로 안 되던 버그 수정. (왜 이런 일이 발생하는지 모르겠으나 그래도 조치는 취했습니다.)

- (Fixed) 백업 완료 문구 수정.

![이미지](https://farm6.staticflickr.com/5835/22437576355_a4386f72f3_o.png)

- (Fixed) 복원 화면에서 백업되지 않은 항목을 표시하는 기능을 추가. (이전에는 백업되지 않은 항목이 있으면 그냥 아예 보여주질 않았음.)

![이미지](https://farm6.staticflickr.com/5785/22249726338_4fa3d17910_o.png)

- (Added) 홈에 업데이트 확인 기능 복귀.

- (Added) [DevSettings] customBackup, customRestore 기능 추가.

원하는 경로의 파일, 폴더를 백업, 복원하는 기능입니다. 자유롭게, /, /tmp를 제외한 모든 파일을 백업, 복원할 수 있습니다. 이를테면 WinterBoard 테마 (/Library/Themes)나 시스템 폰트 (/System/Library/Fonts) 등을 백업, 복원할 수 있습니다. 다만 사용이 좀 어려워서 아직은 DevSettings에 숨겨둔 기능입니다.

- (Added) [DevSettings] Start sh 기능 추가.

단순히 sh 바이너리를 실행하는 기능입니다.

# beta-272 (2015-11-10)

- (Fixed) Cydia 1.1.9+ 지원 강화.

- (Added) [DevSettings] loadSettings 실행 기능 추가.

- (Fixed) 버그 수정.

# beta-279 (2015-11-17)

- (Fixed) Cydia 1.1.9+에서 Cydia 소스 복원이 제대로 안 되던 버그 수정. (단, iOS 9에선 여전히 문제가 있음. 테스트한 바로는 iOS 4.2.1에선 잘 작동함.)

- (Added) 백업 저장할 때 백업한 파일을 보여주는 과정을 추가.

- (Fixed) [DevSettings] DevSettings 설정 파일 저장 경로 변경.

# beta-303 (2015-11-23)

- (Added) App Store 앱 데이터 백업 및 복원 기능 추가.

단, **아직은 iOS 3~7 전용입니다.** iOS 8 이후로 앱 위치가 변경되면서 이 부분은 따로 작업이 필요합니다. 참고로 대용량 데이터를 백업하면 백업 저장 및 복원 시간에 많은 시간을 소요합니다.

계정 정보 및 공인인증서를 저장하는 앱은 백업 및 복원이 안 될 수도 있습니다.

- (Fixed) Library 백업에서 백업 삭제 기능과 App 데이터 백업에서 백업 삭제 기능을 하나의 function으로 통합.

- (Removed) [DevSettings] ls 기능 제거.

# beta-313 (2015-12-31)

- (Fixed) App Store 앱 데이터 백업 및 복원 기능의 여러 개의 버그 수정

# beta-317 (2016-02-04)

- (Fixed) 복원 메뉴에서 App 복원 기능이 불가능함에도 불구하고 복원 기능이 실행됐던 문제 수정.

**iOS 8 이상은 지원되지 않는 기능입니다.**

**계정 정보 및 공인인증서를 저장하는 앱은 백업 및 복원이 안 될 수도 있습니다.**

- (Fixed) root 비밀번호를 잘못 입력할시 일부 환경에서 오류가 발생하는 문제 수정.

# beta-322 (2016-02-21)

![이미지](https://farm2.staticflickr.com/1660/25060266081_67036fb5bc_o.png)

- (Fixed) [DevSettings] DevSettings이 새롭게 바뀌었습니다. 예전 방식의 DevSettings는 **(6) Run function.**에서 **(1) openDevSettings_obsolete**를 실행하시면 됩니다.
