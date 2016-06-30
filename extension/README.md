extension은 BackOn에서 추가적인 데이터를 백업, 복원해주는 확장 프로그램입니다. alpha-340에 추가되었으며, 아직은 미완성 기능입니다.

예정된 function은 아래 2개이며, 한 가지만 완성되었습니다.

- runExtension (extension을 실행해주는 function, 어느정도 구현은 되었지만 아직 보완할 부분이 많습니다.)

- manageExtension (extension을 설치하거나 삭제하는 function, 아직 제작하지 않았으나 수동으로 extension을 삭제하거나 설치해서 runExtension을 통해 실행할 수 있습니다.)

이 폴더(extension)에 있는 script와 minVer 파일은 예제 파일입니다.

- script : 백업 또는 복원 역할을 하는 주요 파일.

- minVer : script를 돌리기 위한 최소한의 BackOn 버전을 기록한 파일 (자연수만 입력되어야 하며, 이 부분은 차후 변경될 수 있습니다.)

수동으로 설치하는 방법은 아래와 같습니다. 첨부된 예제 파일로도 가능합니다.

1. /var/mobile/Library/Preferences/BackOn/Extension 폴더를 생성하고, extension 이름의 폴더를 생성. (예제 파일은 extension 이름이 Test이므로 Test로 생성해야함. 즉, /var/mobile/Library/Preferences/BackOn/Extension/Test)

2. 생성한 폴더 (/var/mobile/Library/Preferences/BackOn/Extension/Test) 안에 script와 minVer 파일들을 넣음.

3. BackOn을 실행하고, DevSettings로 진입한 뒤, (6) Run function. -> (7) runExtension -backup 또는 (8) runExtension -restore 실행

4. Test를 입력하면 extension이 실행됨.

고3이라 시간이 많지 않아서 작업효율이 좋진 않네요. 제작 가이드도 적어야 하는데 말이죠. 언젠간 완성하겠습니다.