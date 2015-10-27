# stable-149 (2015-07-30)

- 첫 stable 빌드 릴리즈.

# stbale-162 (2015-07-31)

- (Added) 업데이트할 때 deb 파일로 업데이트하는 기능 추가.

이제 업데이트할 땐 deb 파일을 설치하는 방식으로 바꼈습니다. deb 파일로 설치하지 않고 이전 방식의 설치 방식(바이너리만 업데이트)으로 이용하려면 DevSettings에서 **updateWithDEBInstall** 설정값을 비활성화시키면 됩니다.

참고로 alpha 빌드는 deb 파일을 제공하지 않으므로 이전 설치 방식 (바이너리 업데이트)로 업데이트가 진행됩니다.

# stbale-166 (2015-07-31)

- (Fixed) 버그 수정.

# stbale-174 (2015-08-01)

- (Fixed) 버그 수정.

# stable-183 (2015-08-04)

- (Fixed) 오타 수정.

- (Fixed) DevSettings 관련 기능 추가. (completeLibraryBackup, completeLibraryBackup)

# stable-186 (2015-08-04)

- (Fixed) 오타 수정.

# stable-189 (2015-08-04)

- (Fixed) 오타 수정.

# stable-199 (2015-08-07)

- (Fixed) Updater 관련 코드 수정.

# stable-208 (2015-08-07)

- (Fixed) 코드 수정.

# stable-215 (2015-08-10)

- (Fixed) 코드 정리.

- (Fixed) 홈에서 업데이트 확인 기능 제거.

# alpha-260 (2015-10-28)

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