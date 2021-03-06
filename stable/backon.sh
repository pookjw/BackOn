#!/bin/sh
##############################################
# Kim Jinwoo - pookjw
# kidjinwoo@me.com
# GitHub : https://github.com/pookjw
##############################################
# BackOn stable-280-official
TOOL_BUILD_TYPE=stable
TOOL_BUILD_NUM=280
TOOL_RELEASE=official
# If you're planning to create unofficial build, please change TOOL_RELEASE value.
##############################################

function setEnglish(){
	LANGUAGE="English"
	NOT_RUN_AS_ROOT="You didn't run as root! Please enter root password. (Initial password is 'alpine')"
	NOT_IOS="This is not iOS."
	ENTER_TEXT="Enter a command(1, 2, 3, 4, q) that you want to do."
	CREATE_BACKUP="Create backup."
	RESTORE_FROM_BACKUP="Restore from backup."
	CHECK_FOR_UPDATES="Check for updates."
	CHECKING_FOR_UPDATE="Checking for update..."
	DOWNLOADING="Downloading..."
	INSTALLING="Installing..."
	RUNNING="Running..."
	UP_TO_DATE="Up-to-date!"
	QUIT="Quit."
	ENTER_QUIT="Enter 'quit' to quit this menu."
	ENTER_BACKUP_NAME="Enter backup name that you want to do. (If you want to set backup name to current date and time, enter 'date'.)"
	BACKUP_CANCELED="Backup was canceled because form was empty."
	NOT_SUPPORTED_FUNCTION="Not supported function."
	NO_SUCH_FILE_OR_DIRECTORY="No such file or directory."
	NO_SUCH_FILE="No such file."
	NO_SUCH_XBACKUP="I can't find backup file of xBackup. (/var/mobile/Library/xBackup/Backups/backup.bk.zip)"
	NOTHING_TO_BACKUP="Nothing to backup!"
	NOTHING_TO_DELETE="Nothing to delete!"
	PRESS_ANY_KEY_TO_CONTINUE="Press any key to continue..."
	WILL_CREATE_BACKUP_NAME="Will create backup name"
	BACKUP_CYDIA_DATA="Backup Cydia sources and packages."
	BACKUP_LIBRARY="Backup Library."
	SHOW_BACKUPED_FILES="Show backuped file(s)."
	DISCARD_BACKUP="Discard backup."
	SAVE_BACKUP="Save backup."
	BACKING_UP="Backing up..."
	SAVING="Saving..."
	SAVED_BACKUP_PATH="Path"
	REMOVING="Removing..."
	UNPACKING="Unpacking..."
	CLOSING_TOOL="Closing tool..."
	ENTER_BACKUP_PATH="Enter backup file path which you saved. (Enter 'xbackup' command to restore backup file of xBackup.)"
	NOT_BACKON_BACKUP="This is not a backup of BackOn."
	DONE="Done."
	YES="YES"
	NO="NO"
	CANCELED="Canceled."
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia packages list"
	BACKUPED_CYDIA_SOURCE="Cydia source"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_CYDIA_SETTINGS="Cydia Settings"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="Succeed to save backup!"
	OSVER_IS_NOT_MATCHING="iOS Version of backup is not matching with current iOS Version. It will cause problem."
	RESTORE_CYDIA_DATA="Restore Cydia sources and packages list."
	RESTORE_SHOW_CYDIA_LIST="Show backuped Cydia packages list."
	RESTORE_LIBRARY="Restore Library."
	REBOOT="Reboot."
	RESTORING="Restoring..."
	REFRESHING_SOURCES="Refreshing Cydia sources..."
	DOWNLOADING_INSTALLING_PACKAGES="Downloading Cydia packages & Installing..."
	RESTORING_ALL_IS_NOT_RECOMMENDED="Restoring all Library files is not recommended bacause it may cause boot-loop. Are you sure to continue? (yes/no)"
	NOT_BACKUPED_YET="No backuped file yet."
	NOT_BACKUPED="Not backuped"
	ENTER_NICKNAME="Enter nickname of custom backup that you want to do. (Space bar is not supported.)"
	ALREADY_EXISTS_WANT_TO_REMOVE="Entered nickname is already exists. Do you want to remove it? (yes/no)"
	ENTER_FILE_PATH="Enter file/folder path."
	SHOW_GUIDE_3="Enter file/folder name that you want to backup. If you want to backup all of files, enter 'all' command. Enter 'delete' command to delete backuped backup."
	SHOW_GUIDE_4="Enter file/folder name that you want to delete backup. If you want to delete all of backup files, enter 'all' command."
	SHOW_GUIDE_10="Enter file/folder name that you want to restore. If you want to restore all of files, enter 'all' command."
	SHOW_INFO_1="Backup Menu"
	SHOW_INFO_2="Backup Menu > Backup Cydia sources and packages list"
	SHOW_INFO_3="Backup Menu > Backup Library"
	SHOW_INFO_4="Backup Menu > Backup Library > Delete backup"
	SHOW_INFO_5="Backup Menu > Show backuped file(s)"
	SHOW_INFO_6="Backup Menu > Save backup"
	SHOW_INFO_7="Restore Menu"
	SHOW_INFO_8="Restore Menu > Restore Cydia sources and packages list"
	SHOW_INFO_9="Restore Menu > Show backuped Cydia packages list."
	SHOW_INFO_10="Restore Menu > Restore Library"
	SHOW_INFO_11="Restore Menu > Restore Library > Restore all of Library."
	SHOW_INFO_12="Custom Backup"
	SHOW_INFO_13="Custom Backup > Detect backup target"
	SHOW_INFO_14="Custom Restore"
}

function setKorean(){
	LANGUAGE="Korean"
	NOT_RUN_AS_ROOT="root로 로그인되지 않았습니다! root 비밀번호를 입력해 주세요. (초기 비밀번호는 'alpine'입니다.)"
	NOT_IOS="실행된 기기는 iOS가 아닙니다."
	ENTER_TEXT="명령어(1, 2, 3, 4, q)를 입력해 주세요."
	CREATE_BACKUP="백업 생성"
	RESTORE_FROM_BACKUP="백업에서 복원"
	CHECK_FOR_UPDATES="업데이트 확인"
	CHECKING_FOR_UPDATE="업데이트 확인 중..."
	DOWNLOADING="다운로드 중..."
	INSTALLING="설치 중..."
	RUNNING="실행 중..."
	UP_TO_DATE="이미 최신 버전입니다!"
	QUIT="종료"
	ENTER_QUIT="'quit'을 입력하면 이 메뉴를 종료합니다."
	ENTER_BACKUP_NAME="원하는 백업 이름을 입력해 주세요. ('date'를 입력하면 현재 날짜, 시간을 백업 이름으로 지정합니다.)"
	BACKUP_CANCELED="입력란이 비었기 때문에 백업을 취소합니다."
	NOT_SUPPORTED_FUNCTION="지원되지 않는 기능입니다."
	NO_SUCH_FILE_OR_DIRECTORY="존재하지 않는 파일이나 폴더입니다."
	NO_SUCH_FILE="존재하지 않는 파일입니다."
	NO_SUCH_XBACKUP="xBackup의 백업 파일을 찾을 수 없습니다! (/var/mobile/Library/xBackup/Backups/backup.bk.zip)"
	NOTHING_TO_BACKUP="백업할 파일이 없습니다!"
	NOTHING_TO_DELETE="지울 백업 파일이 없습니다!"
	PRESS_ANY_KEY_TO_CONTINUE="계속하려면 아무 키나 누르십시오..."
	WILL_CREATE_BACKUP_NAME="백업 이름"
	BACKUP_CYDIA_DATA="Cydia 소스, 패키지를 백업"
	BACKUP_LIBRARY="Library 백업"
	SHOW_BACKUPED_FILES="백업한 파일 보기"
	DISCARD_BACKUP="백업을 취소하고 종료"
	SAVE_BACKUP="백업을 저장"
	BACKING_UP="백업 중..."
	SAVING="저장 중..."
	SAVED_BACKUP_PATH="백업 파일의 경로"
	REMOVING="삭제 중..."
	UNPACKING="압축해제 중..."
	CLOSING_TOOL="툴 종료 중..."
	ENTER_BACKUP_PATH="백업 파일의 경로를 입력해 주세요. ('xbackup' 명령어를 입력하시면 xBackup의 백업 파일을 복원합니다.)"
	NOT_BACKON_BACKUP="이것은 BackOn의 백업 파일이 아닙니다."
	DONE="완료."
	YES="예"
	NO="아니오"
	CANCELED="취소되었습니다."
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia 패키지 목록"
	BACKUPED_CYDIA_SOURCE="Cydia 소스"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_CYDIA_SETTINGS="Cydia 설정"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="백업에 성공했습니다!"
	OSVER_IS_NOT_MATCHING="백업할 때의 iOS 버전이 현재 기기의 iOS 버전과 일치하지 않습니다. 이것은 문제를 야기할 수 있습니다."
	RESTORE_CYDIA_DATA="Cydia 소스, 패키지 복원"
	RESTORE_SHOW_CYDIA_LIST="백업한 Cydia 패키지 목록 보기"
	RESTORE_LIBRARY="Library 복원"
	REBOOT="재부팅"
	RESTORING="복원 중..."
	REFRESHING_SOURCES="Cydia 소스 새로고침 중..."
	DOWNLOADING_INSTALLING_PACKAGES="Cydia 패키지 다운로드 & 설치 중..."
	RESTORING_ALL_IS_NOT_RECOMMENDED="Library를 모두 복원하는 것은 무한사과 (부팅불가)의 위험이 있기 때문에 추천하지 않습니다. 복원하시겠습니까? (yes/no)"
	NOT_BACKUPED_YET="아직 백업된 파일이 없습니다."
	NOT_BACKUPED="백업되지 않음"
	ENTER_NICKNAME="커스텀 백업할 것의 닉네임을 입력해 주세요. (띄어쓰기는 지원되지 않습니다.)"
	ALREADY_EXISTS_WANT_TO_REMOVE="입력하신 닉네임은 이미 존재합니다. 기존 것을 제거하시겠습니까? (yes/no)"
	ENTER_FILE_PATH="파일/폴더 경로를 입력해 주세요."
	SHOW_GUIDE_3="백업을 원하는 폴더/파일의 이름을 입력하시면 됩니다. 'all'을 입력하면 모두 백업할 수 있습니다. 'delete' 명령어로 백업한 백업 파일을 삭제할 수 있습니다."
	SHOW_GUIDE_4="삭제를 원하는 폴더/파일의 이름을 입력하시면 됩니다. 'all'을 입력하면 모두 지울 수 있습니다."
	SHOW_GUIDE_10="복원을 원하는 폴더/파일의 이름을 입력하시면 됩니다. 'all'을 입력하면 모두 복원할 수 있습니다."
	SHOW_INFO_1="백업 메뉴"
	SHOW_INFO_2="백업 메뉴 > Cydia 소스, 패키지 목록을 백업"
	SHOW_INFO_3="백업 메뉴 > Library 백업"
	SHOW_INFO_4="백업 메뉴 > Library 백업 > 백업 삭제"
	SHOW_INFO_5="백업 메뉴 > 백업한 파일 표시"
	SHOW_INFO_6="백업 메뉴 > 백업을 저장"
	SHOW_INFO_7="복원 메뉴"
	SHOW_INFO_8="복원 메뉴 > Cydia 소스, 패키지 복원"
	SHOW_INFO_9="복원 메뉴 > 백업한 Cydia 패키지 목록 보기"
	SHOW_INFO_10="복원 메뉴 > Library 복원"
	SHOW_INFO_11="복원 메뉴 > Library 복원 > Library 모두 복원"
	SHOW_INFO_12="커스텀 백업"
	SHOW_INFO_13="커스텀 백업 > 백업 대상 입력"
	SHOW_INFO_14="커스텀 복원"
}

function openDevSettings(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "DevSettings - ${TOOL_BUILD_TYPE}-${TOOL_BUILD_NUM}-${TOOL_RELEASE}"
		showLinesB
		if [[ "${ExitKey}" == YES ]]; then
			echo -e "(1) ExitKey : YES"
		elif [[ "${ExitKey}" == NO ]]; then
			echo -e "(1) ExitKey : NO"
		fi
		if [[ "${showLog}" == YES ]]; then
			echo -e "(2) showLog : YES"
		elif [[ "${showLog}" == NO ]]; then
			echo -e "(2) showLog : NO"
		fi
		if [[ "${showPA2C}" == YES ]]; then
			echo -e "(3) showPA2C : YES"
		elif [[ "${showPA2C}" == NO ]]; then
			echo -e "(3) showPA2C : NO"
		fi
		if [[ "${skipRestore}" == YES ]]; then
			echo -e "(4) skipRestore : YES"
		elif [[ "${skipRestore}" == NO ]]; then
			echo -e "(4) skipRestore : NO"
		fi
		echo -e "(5) UpdateURL : ${UpdateURL}"
		echo -e "(6) OSVer : ${OSVer}"
		if [[ "${MakeFakeActivatorFile}" == YES ]]; then
			echo -e "(7) MakeFakeActivatorFile : YES"
		elif [[ "${MakeFakeActivatorFile}" == NO ]]; then
			echo -e "(7) MakeFakeActivatorFile : NO"
		fi
		echo -e "(8) UpdateBuildType : ${UpdateBuildType}"
		if [[ "${ForceInstallUpdate}" == YES ]]; then
			echo -e "(9) ForceInstallUpdate : YES"
		elif [[ "${ForceInstallUpdate}" == NO ]]; then
			echo -e "(9) ForceInstallUpdate : NO"
		fi
		echo -e "(10) BackupPath : ${BackupPath}"
		if [[ "${ClearKey}" == YES ]]; then
			echo -e "(11) ClearKey : YES"
		elif [[ "${ClearKey}" == NO ]]; then
			echo -e "(11) ClearKey : NO"
		fi
		echo -e "(12) switchLanguage (Current : ${LANGUAGE})"
		echo -e "(13) setDefaultLanguage : ${setDefaultLanguage}"
		if [[ "${detailFileListView}" == YES ]]; then
			echo -e "(14) detailFileListView : YES"
		elif [[ "${detailFileListView}" == NO ]]; then
			echo -e "(14) detailFileListView : NO"
		fi
		if [[ "${runUpdateODS}" == YES ]]; then
			echo -e "(15) runUpdateODS : YES"
		elif [[ "${runUpdateODS}" == NO ]]; then
			echo -e "(15) runUpdateODS : NO"
		fi
		echo -e "(16) ${CHECK_FOR_UPDATES}"
		echo -e "(17) cp /backon.sh /usr/bin/backon"
		echo -e "(18) setTestFunction"
		if [[ "${applyColorScheme}" == YES ]]; then
			echo -e "(19) applyColorScheme : YES"
		elif [[ "${applyColorScheme}" == NO ]]; then
			echo -e "(19) applyColorScheme : NO"
		fi
		if [[ "${DynamicLine}" == YES ]]; then
			echo -e "(20) DynamicLine : YES"
		elif [[ "${DynamicLine}" == NO ]]; then
			echo -e "(20) DynamicLine : NO"
		fi
		echo -e "(21) UpdaterVersion : ${UpdaterVersion}"
		if [[ "${updateWithDEBInstall}" == YES ]]; then
			echo -e "(22) updateWithDEBInstall : YES"
		elif [[ "${updateWithDEBInstall}" == NO ]]; then
			echo -e "(22) updateWithDEBInstall : NO"
		fi
		if [[ "${completeLibraryBackup}" == YES ]]; then
			echo -e "(23) completeLibraryBackup : YES"
		elif [[ "${completeLibraryBackup}" == NO ]]; then
			echo -e "(23) completeLibraryBackup : NO"
		fi
		if [[ "${fixDynamicLineIssue}" == YES ]]; then
			echo -e "(24) fixDynamicLineIssue : YES"
		elif [[ "${fixDynamicLineIssue}" == NO ]]; then
			echo -e "(24) fixDynamicLineIssue : NO"
		fi
		echo -e "(25) customBackup"
		echo -e "(26) customRestore"
		echo -e "(27) loadSettings"
		echo -e "(c) Start sh."
		echo -e "(l) ls"
		echo -e "(s) Save Settings."
		echo -e "(d) Disable DevSettings."
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_D
		applyNoColor

		if [[ "${ANSWER_D}" == 1 ]]; then
			if [[ "${ExitKey}" == YES ]]; then
				ExitKey=NO
			elif [[ "${ExitKey}" == NO ]]; then
				ExitKey=YES
			fi
		elif [[ "${ANSWER_D}" == 2 ]]; then
			if [[ "${showLog}" == YES ]]; then
				showLog=NO
			elif [[ "${showLog}" == NO ]]; then
				showLog=YES
			fi
		elif [[ "${ANSWER_D}" == 3 ]]; then
			if [[ "${showPA2C}" == YES ]]; then
				showPA2C=NO
			elif [[ "${showPA2C}" == NO ]]; then
				showPA2C=YES
			fi
		elif [[ "${ANSWER_D}" == 4 ]]; then
			if [[ "${skipRestore}" == YES ]]; then
				skipRestore=NO
			elif [[ "${skipRestore}" == NO ]]; then
				skipRestore=YES
			fi
		elif [[ "${ANSWER_D}" == 5 ]]; then
			applyLightCyan
			read -p "Locked : " ANSWER_L
			applyNoColor
			if [[ "${ANSWER_L}" == 1234 ]]; then
				applyLightCyan
				read -p "Query : " UpdateURL
				applyNoColor
				if [[ -z "${UpdateURL}" ]]; then
					UpdateURL="https://github.com/pookjw/BackOn/archive/master.zip"
				fi
			else
				applyRed
				echo -e "Incorrect!"
				applyNoColor
				PA2CKey
			fi
		elif [[ "${ANSWER_D}" == 6 ]]; then
			applyLightCyan
			read -p "Query : " OSVer
			applyNoColor
			if [[ -z "${OSVer}" ]]; then
				OSVer="$(sw_vers -productVersion)"
			fi
		elif [[ "${ANSWER_D}" == 7 ]]; then
			if [[ "${MakeFakeActivatorFile}" == YES ]]; then
				rm /var/mobile/Library/Caches/libactivator.plist
				MakeFakeActivatorFile=NO
			elif [[ "${MakeFakeActivatorFile}" == NO ]]; then
				touch /var/mobile/Library/Caches/libactivator.plist
				MakeFakeActivatorFile=YES
			fi
		elif [[ "${ANSWER_D}" == 8 ]]; then
			while(true); do
				ClearKey
				showLinesA
				echo -e "(1) alpha"
				echo -e "(2) beta"
				echo -e "(3) stable"
				showLinesA
				applyLightCyan
				read -p "- " ANSWER_E
				applyNoColor

				if [[ "${ANSWER_E}" == 1 ]]; then
					UpdateBuildType=alpha
					break
				elif [[ "${ANSWER_E}" == 2 ]]; then
					UpdateBuildType=beta
					break
				elif [[ "${ANSWER_E}" == 3 ]]; then
					UpdateBuildType=stable
					break
				elif [[ ${ANSWER_E} == exit ]]; then
					ExitKey
				elif [[ "${ANSWER_E}" == q || "${ANSWER_E}" == quit ]]; then
					break
				fi
			done
		elif [[ "${ANSWER_D}" == 9 ]]; then
			if [[ "${ForceInstallUpdate}" == YES ]]; then
				ForceInstallUpdate=NO
			elif [[ "${ForceInstallUpdate}" == NO ]]; then
				ForceInstallUpdate=YES
			fi
		elif [[ "${ANSWER_D}" == 10 ]]; then
			applyLightCyan
			read -p "Query : " BackupPath
			applyNoColor
			if [[ ! -d "${BackupPath}" || -z "${BackupPath}" ]]; then
				BackupPath=/var/mobile/Media
			fi
		elif [[ "${ANSWER_D}" == 11 ]]; then
			if [[ "${ClearKey}" == YES ]]; then
				ClearKey=NO
			elif [[ "${ClearKey}" == NO ]]; then
				ClearKey=YES
			fi
		elif [[ "${ANSWER_D}" == 12 ]]; then
			switchLanguage
		elif [[ "${ANSWER_D}" == 13 ]]; then
			while(true); do
				ClearKey
				showLinesA
				echo -e "(1) English"
				echo -e "(2) Korean (한국어)"
				showLinesA
				applyLightCyan
				read -p "- " ANSWER_G
				applyNoColor

				if [[ "${ANSWER_G}" == 1 ]]; then
					setDefaultLanguage=English
					break
				elif [[ "${ANSWER_G}" == 2 ]]; then
					setDefaultLanguage=Korean
					break
				elif [[ "${ANSWER_G}" == exit ]]; then
					ExitKey
				elif [[ "${ANSWER_G}" == q || "${ANSWER_G}" == quit ]]; then
					break
				fi
			done
		elif [[ "${ANSWER_D}" == 14 ]]; then
			if [[ "${detailFileListView}" == YES ]]; then
				detailFileListView=NO
			elif [[ "${detailFileListView}" == NO ]]; then
				detailFileListView=YES
			fi
		elif [[ "${ANSWER_D}" == 15 ]]; then
			if [[ "${runUpdateODS}" == YES ]]; then
				runUpdateODS=NO
			elif [[ "${runUpdateODS}" == NO ]]; then
				runUpdateODS=YES
			fi
		elif [[ "${ANSWER_D}" == 16 ]]; then
			saveSettings
			loadSettings
			runUpdate
		elif [[ "${ANSWER_D}" == 17 ]]; then
			saveSettings
			loadSettings
			cp /backon.sh /usr/bin/backon
			quitTool
		elif [[ "${ANSWER_D}" == 18 ]]; then
			:
		elif [[ "${ANSWER_D}" == 19 ]]; then
			if [[ "${applyColorScheme}" == YES ]]; then
				applyColorScheme=NO
			elif [[ "${applyColorScheme}" == NO ]]; then
				applyColorScheme=YES
			fi
		elif [[ "${ANSWER_D}" == 20 ]]; then
			if [[ "${DynamicLine}" == YES ]]; then
				DynamicLine=NO
			elif [[ "${DynamicLine}" == NO ]]; then
				DynamicLine=YES
			fi
		elif [[ "${ANSWER_D}" == 21 ]]; then
			applyLightCyan
			read -p "Query : " UpdaterVersion
			applyNoColor
			if [[ -z "${UpdaterVersion}" ]]; then
				UpdaterVersion=2
			fi
		elif [[ "${ANSWER_D}" == 22 ]]; then
			if [[ "${updateWithDEBInstall}" == YES ]]; then
				updateWithDEBInstall=NO
			elif [[ "${updateWithDEBInstall}" == NO ]]; then
				updateWithDEBInstall=YES
			fi
		elif [[ "${ANSWER_D}" == 23 ]]; then
			if [[ "${completeLibraryBackup}" == YES ]]; then
				completeLibraryBackup=NO
			elif [[ "${completeLibraryBackup}" == NO ]]; then
				completeLibraryBackup=YES
			fi
		elif [[ "${ANSWER_D}" == 24 ]]; then
			if [[ "${fixDynamicLineIssue}" == YES ]]; then
				fixDynamicLineIssue=NO
			elif [[ "${fixDynamicLineIssue}" == NO ]]; then
				fixDynamicLineIssue=YES
			fi
		elif [[ "${ANSWER_D}" == 25 ]]; then
			customBackup
		elif [[ "${ANSWER_D}" == 26 ]]; then
			customRestore
		elif [[ "${ANSWER_D}" == 27 ]]; then
			loadSettings
		elif [[ "${ANSWER_D}" == c || "${ANSWER_D}" == sh ]]; then
			sh
			PA2CKey
		elif [[ "${ANSWER_D}" == l || "${ANSWER_D}" == ls ]]; then
			ClearKey
			showLinesA
			echo -e "/tmp/BackOn/"
			ls -l "/tmp/BackOn"
			echo -e "\n/tmp/BackOn/Backup/${BACKUP_NAME}"
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}"
			echo -e "\n/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
			echo -e "\n/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
			echo -e "\n/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
			echo -e "\n/tmp/BackOn/Backup/${BACKUP_NAME}/Custom"
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom"
			echo -e "\n/tmp/BackOn/Restore"
			ls -l "/tmp/BackOn/Restore"
			echo -e "\n/tmp/BackOn/Restore/Cydia"
			ls -l "/tmp/BackOn/Restore/Cydia"
			echo -e "\n/tmp/BackOn/Restore/Library"
			ls -l "/tmp/BackOn/Restore/Library"
			echo -e "\n/tmp/BackOn/Restore/info"
			ls -l "/tmp/BackOn/Restore/info"
			echo -e "\n/tmp/BackOn/Restore/Custom"
			ls -l "/tmp/BackOn/Restore/Custom"
			showLinesA
			PA2CKey
		elif [[ "${ANSWER_D}" == save ||  "${ANSWER_D}" == s ]]; then
			saveSettings
			loadSettings
			break
		elif [[ "${ANSWER_D}" == disable || "${ANSWER_D}" == d ]]; then
			rm -rf /var/mobile/Library/Preferences/BackOn/DevSettings
			loadSettings
			break
		elif [[ "${ANSWER_D}" == exit ]]; then
			ExitKey
		elif [[ -z "${ANSWER_D}" ]]; then
			:
		else
			showNotSupportedFunction
		fi
	done
}

function saveSettings(){
	if [[ -d "/var/mobile/Library/Preferences/BackOn/DevSettings" ]]; then
		rm -rf /var/mobile/Library/Preferences/BackOn/DevSettings
	fi
	mkdir -p /var/mobile/Library/Preferences/BackOn/DevSettings
	echo -e "${ExitKey}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/ExitKey
	echo -e "${showLog}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/showLog
	echo -e "${showPA2C}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/showPA2C
	echo -e "${skipRestore}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/skipRestore
	echo -e "${UpdateBuildType}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/UpdateBuildType
	echo -e "${ForceInstallUpdate}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/ForceInstallUpdate
	echo -e "${BackupPath}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/BackupPath
	echo -e "${ClearKey}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/ClearKey
	echo -e "${setDefaultLanguage}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/setDefaultLanguage
	echo -e "${detailFileListView}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/detailFileListView
	echo -e "${runUpdateODS}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/runUpdateODS
	echo -e "${applyColorScheme}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/applyColorScheme
	echo -e "${DynamicLine}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/DynamicLine
	echo -e "${UpdaterVersion}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/UpdaterVersion
	echo -e "${updateWithDEBInstall}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/updateWithDEBInstall
	echo -e "${completeLibraryBackup}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/completeLibraryBackup
	echo -e "${fixDynamicLineIssue}" >> /var/mobile/Library/Preferences/BackOn/DevSettings/fixDynamicLineIssue
}


function loadSettings(){
	if [[ -d "/var/mobile/Library/Preferences/BackOn/DevSettings" ]]; then
		enabledODS=YES
	else
		enabledODS=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/ExitKey" ]]; then
		ExitKey="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/ExitKey")"
	else
		ExitKey=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/showLog" ]]; then
		showLog="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/showLog")"
	else
		showLog=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/showPA2C" ]]; then
		showPA2C="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/showPA2C")"
	else
		showPA2C=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/skipRestore" ]]; then
		skipRestore="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/skipRestore")"
	else
		skipRestore=NO
	fi
	if [[ -f "/var/mobile/Library/Caches/libactivator.plist" ]]; then
		MakeFakeActivatorFile=YES
	else
		MakeFakeActivatorFile=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/UpdateBuildType" ]]; then
		UpdateBuildType="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/UpdateBuildType")"
	else
		UpdateBuildType="${TOOL_BUILD_TYPE}"
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/ForceInstallUpdate" ]]; then
		ForceInstallUpdate="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/ForceInstallUpdate")"
	else
		ForceInstallUpdate=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/BackupPath" ]]; then
		BackupPath="$(cat /var/mobile/Library/Preferences/BackOn/DevSettings/BackupPath)"
	else
		BackupPath=/var/mobile/Media
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/ClearKey" ]]; then
		ClearKey="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/ClearKey")"
	else
		ClearKey=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/setDefaultLanguage" ]]; then
		setDefaultLanguage="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/setDefaultLanguage")"
	else
		setDefaultLanguage=English
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/detailFileListView" ]]; then
		detailFileListView="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/detailFileListView")"
	else
		detailFileListView=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/runUpdateODS" ]]; then
		runUpdateODS="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/runUpdateODS")"
	else
		runUpdateODS=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/applyColorScheme" ]]; then
		applyColorScheme="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/applyColorScheme")"
	else
		applyColorScheme=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/DynamicLine" ]]; then
		DynamicLine="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/DynamicLine")"
	else
		DynamicLine=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/updateWithDEBInstall" ]]; then
		updateWithDEBInstall="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/updateWithDEBInstall")"
	else
		updateWithDEBInstall=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/UpdaterVersion" ]]; then
		UpdaterVersion="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/UpdaterVersion")"
	else
		UpdaterVersion=2
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/completeLibraryBackup" ]]; then
		completeLibraryBackup="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/completeLibraryBackup")"
	else
		completeLibraryBackup=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DevSettings/fixDynamicLineIssue" ]]; then
		fixDynamicLineIssue="$(cat "/var/mobile/Library/Preferences/BackOn/DevSettings/fixDynamicLineIssue")"
	else
		fixDynamicLineIssue=NO
	fi
}

function showLinesA(){
	if [[ "${DynamicLine}" == YES ]]; then
		PRINTED_COUNTS=0
		COLS=`tput cols`
		while [[ ! ${PRINTED_COUNTS} == $COLS ]]; do
	   		echo -e -n "*"
	 		PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
		done
		if [[ ! "${fixDynamicLineIssue}" == YES ]]; then
			echo -e
		fi
	else
		echo -e "***************"
	fi
}

function showLinesB(){
	if [[ "${DynamicLine}" == YES ]]; then
		PRINTED_COUNTS=0
		COLS=`tput cols`
		while [[ ! ${PRINTED_COUNTS} == $COLS ]]; do
	   		echo -e -n "-"
	 		PRINTED_COUNTS=$((${PRINTED_COUNTS}+1))
		done
		if [[ ! "${fixDynamicLineIssue}" == YES ]]; then
			echo -e
		fi
	else
		echo -e "---------------"
	fi
}

function showYESNO(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "${1}"
		if [[ ! -z "${2}" ]]; then
			showLinesB
			echo -e "${2}"
		fi
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_YESNO
		applyNoColor

		if [[ -z "${ANSWER_YESNO}" ]]; then
			:
		elif [[ "${ANSWER_YESNO}" == yes ]]; then
			ANSWER_YESNO=YES
			break
		elif [[ "${ANSWER_YESNO}" == no ]]; then
			ANSWER_YESNO=NO
			break
		elif [[ "${ANSWER_YESNO}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_YESNO}" == exit ]]; then
			ExitKey
		else
			showNotSupportedFunction
		fi
	done
}

function applyRed(){
	if [[ "${applyColorScheme}" == YES ]]; then
		echo -e -n "\033[0;31m"
	fi
}

function applyPurple(){
	if [[ "${applyColorScheme}" == YES ]]; then
		echo -e -n "\033[1;35m"
	fi
}

function applyLightCyan(){
	if [[ "${applyColorScheme}" == YES ]]; then
		echo -e -n "\033[1;36m"
	fi
}

function applyNoColor(){
	if [[ "${applyColorScheme}" == YES ]]; then
		echo -e -n "\033[0m"
	fi
}

function showNotSupportedFunction(){
	applyRed
	echo -e "${NOT_SUPPORTED_FUNCTION}"
	applyNoColor
	PA2CKey
}

function ExitKey(){
	if [[ "${ExitKey}" == YES ]]; then
		quitTool
	else
		showNotSupportedFunction
	fi
}

function PA2CKey(){
	if [[ "${showPA2C}" == YES ]]; then
		applyLightCyan
		read -s -n 1 -p "${PRESS_ANY_KEY_TO_CONTINUE}"
		applyNoColor
		echo -e
	fi
}

function ClearKey(){
	if [[ "${ClearKey}" == YES ]]; then
		clear
	fi
}

function checkRoot(){
	if [[ ! "$(id -u)" == "0" ]]; then
		applyRed
		echo -e "${NOT_RUN_AS_ROOT}"
		applyNoColor
		su -c "backon ${1}"
		quitTool_NoClear
	fi
}

function checkOS(){
	if [[ ! "$(sw_vers -productName)" == "iPhone OS" ]]; then
		applyRed
		echo -e "${NOT_IOS}"
		applyNoColor
		quitTool_NoClear_Error
	fi
}

function switchLanguage(){
	if [[ "${LANGUAGE}" == English ]]; then
		setKorean
	elif [[ "${LANGUAGE}" == Korean ]]; then
		setEnglish
	fi
}

function killCydia(){
	ps cax | grep Cydia > /dev/null
	if [ $? -eq 0 ]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Killing Cydia..."
			applyNoColor
		fi
		killall -9 Cydia
	fi
	ps cax | grep MobileCydia > /dev/null
	if [ $? -eq 0 ]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Killing MobileCydia..."
			applyNoColor
		fi
		killall -9 MobileCydia
	fi
}

function removeEmptyBackupFolder(){
	for Folder in Cydia Library Custom; do
		if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/${Folder}" ]]; then
			if [[ -z "$(ls "/tmp/BackOn/Backup/${BACKUP_NAME}/${Folder}")" ]]; then
				rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/${Folder}"
			fi
		fi
	done
}

function removeEmptyRestoreFolder(){
	for Folder in Cydia Library Custom info; do
		if [[ -d "/tmp/BackOn/Restore/${Folder}" ]]; then
			if [[ -z "$(ls "/tmp/BackOn/Restore/${Folder}")" ]]; then
				rm -rf "/tmp/BackOn/Restore/${Folder}"
			fi
		fi
	done
}

function quitTool(){
	ClearKey
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo -e "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_Error(){
	ClearKey
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo -e "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 1
}

function quitTool_NoClear(){
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo -e "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_NoClear_Error(){
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo -e "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 1
}

##############################################

function defineBackupName(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "${ENTER_BACKUP_NAME}"
		echo -e "(${ENTER_QUIT})"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_B
		applyNoColor
		if [[ -z "${ANSWER_B}" ]]; then
			:
		elif [[ "${ANSWER_B}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_B}" == q || "${ANSWER_B}" == quit ]]; then
			quitTool
		elif [[ "${ANSWER_B}" == exit ]]; then
			ExitKey
		else
			if [[ "${ANSWER_B}" == date ]]; then
				ANSWER_B=`date "+%Y-%m-%d_%H:%M:%S"`
			fi
			if [[ -f "${BackupPath}/${ANSWER_B}.zip" || -d "${BackupPath}/${ANSWER_B}.zip" ]]; then
				local COUNT=2
				while(true); do
					if [[ -f "${BackupPath}/${ANSWER_B}-(${COUNT}).zip" || -d "${BackupPath}/${ANSWER_B}-(${COUNT}).zip" ]]; then
						local COUNT=$((${COUNT}+1))
					else
						ANSWER_B="${ANSWER_B}-(${COUNT})"
						break
					fi
				done
			fi
			if [[ -d "/tmp/BackOn/Backup/${ANSWER_B}" ]]; then
				rm -rf "/tmp/BackOn/Backup/${ANSWER_B}"
			fi
			mkdir -p "/tmp/BackOn/Backup/${ANSWER_B}"
			if [[ ! -d "/tmp/BackOn/Backup/${ANSWER_B}" ]]; then
				applyRed
				echo -e "ERROR"
				applyNoColor
				quitTool_NoClear_Error
			else
				BACKUP_NAME="${ANSWER_B}"
				break
			fi
		fi
	done
}

function showInitialBackupMenu(){
	while(true); do
		removeEmptyBackupFolder
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_1}"
		showLinesB
		echo -e "(1) ${BACKUP_CYDIA_DATA}"
		echo -e "(2) ${BACKUP_LIBRARY}"
		echo -e "(3) ${SHOW_BACKUPED_FILES}"
		echo -e "(q) ${DISCARD_BACKUP}"
		echo -e "(s) ${SAVE_BACKUP}"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_C
		applyNoColor

		if [[ "${ANSWER_C}" == 1 ]]; then
			backupCydiaData
		elif [[ "${ANSWER_C}" == 2 ]]; then
			backupLibrary
		elif [[ "${ANSWER_C}" == 3 ]]; then
			showBackupedFilesBackup
		elif [[ "${ANSWER_C}" == q || "${ANSWER_C}" == quit ]]; then
			quitTool
		elif [[ "${ANSWER_C}" == s ]]; then
			showBackupedFilesBackup
			saveBackup
		elif [[ "${ANSWER_C}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_C}" == exit ]]; then
			ExitKey
		elif [[ -z "${ANSWER_C}" ]]; then
			:
		else
			showNotSupportedFunction
		fi
	done
}

function backupCydiaData(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_2}"
	showLinesB
	killCydia
	echo -e "${BACKING_UP}"
	if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia" || -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia" ]]; then
		rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
	fi
	mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
	dpkg --get-selections > "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/apt.txt"
	cp /var/mobile/Library/Caches/com.saurik.Cydia/sources.list "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
	cp /var/mobile/Library/Preferences/com.saurik.Cydia.plist /tmp/BackOn/Backup/${BACKUP_NAME}/Cydia
	if [[ -f /var/lib/cydia/metadata.plist ]]; then
		cp /var/lib/cydia/metadata.plist "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/metadata.cb0"
	fi
	if [[ -f /var/mobile/Library/Cydia/metadata.cb0 ]]; then
		cp /var/mobile/Library/Cydia/metadata.cb0 "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia"
	fi
	if [[ ! -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/apt.txt" || ! -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/sources.list" || ! -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/metadata.cb0" || ! -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/com.saurik.Cydia.plist" ]]; then
		applyRed
		echo -e "ERROR!"
		applyNoColor
		removeEmptyBackupFolder
	else
		echo -e "${DONE}"
	fi
	showLinesA
	PA2CKey
}

function backupLibrary(){
	if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Library" ]]; then
		rm "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
	fi
	if [[ ! -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library" ]]; then
		mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
	fi
	while(true); do
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_3}"
		showLinesB
		if [[ "${detailFileListView}" == YES ]]; then
			ls -l /var/mobile/Library
		else
			ls /var/mobile/Library
		fi
		showLinesB
		echo -e "(${ENTER_QUIT})"
		echo -e "(${SHOW_GUIDE_3})"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_E
		applyNoColor

		if [[ -z "${ANSWER_E}" ]]; then
			:
		else
			if [[ "${ANSWER_E}" == all ]]; then
				echo -e "${BACKING_UP}"
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					if [[ "${completeLibraryBackup}" == YES ]]; then
						rsync -av /var/mobile/Library/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					else
						rsync -av --exclude="Assets" --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					fi
					applyNoColor
				else
					if [[ "${completeLibraryBackup}" == YES ]]; then
						rsync -q -av /var/mobile/Library/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					else
						rsync -q -av --exclude="Assets" --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					fi
				fi
				if [[ -f "/var/mobile/Library/Caches/libactivator.plist" ]]; then
					if [[ ! -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches" ]]; then
						mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
					fi
					cp /var/mobile/Library/Caches/libactivator.plist "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
					if [[ "${showLog}" == YES ]]; then
						applyPurple
						echo -e "Backuped libactivator.plist."
						applyNoColor
					fi
				fi
				if [[ -z "$(ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Library")" ]]; then
					applyRed
					echo -e "ERROR!"
					applyNoColor
				else
					echo -e "${DONE}"
				fi
				PA2CKey
			elif [[ "${ANSWER_E}" == delete ]]; then
				while(true); do
					if [[ -z "$(ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Library")" ]]; then
						ClearKey
						showLinesA
						echo -e "${SHOW_INFO_4}"
						showLinesB
						applyRed
						echo -e "${NOTHING_TO_DELETE}"
						applyNoColor
						showLinesA
						PA2CKey
						break
					fi
					ClearKey
					showLinesA
					echo -e "${SHOW_INFO_4}"
					showLinesB
					if [[ "${detailFileListView}" == YES ]]; then
						ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					else
						ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
					fi
					showLinesB
					echo -e "(${ENTER_QUIT})"
					echo -e "(${SHOW_GUIDE_4})"
					showLinesA
					applyLightCyan
					read -p "- " ANSWER_J
					applyNoColor

					if [[ -z "${ANSWER_J}" ]]; then
						:
					else
						if [[ "${ANSWER_J}" == all ]]; then
							echo -e "${REMOVING}"
							rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
							mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
							echo -e "${DONE}"
							PA2CKey
						elif [[ "${ANSWER_J}" == q || "${ANSWER_J}" == quit ]]; then
							break
						elif  [[ "${ANSWER_J}" == ods ]]; then
							openDevSettings
						elif [[ "${ANSWER_J}" == exit ]]; then
							ExitKey
						elif [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo -e "${REMOVING}"
							rm "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo -e "${DONE}"
							PA2CKey
						elif [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo -e "${REMOVING}"
							rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo -e "${DONE}"
							PA2CKey
						else
							applyRed
							echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
							applyNoColor
							PA2CKey
						fi
					fi
				done
			elif [[ "${ANSWER_E}" == Preferences ]]; then
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					echo -e "Special backup."
					applyNoColor
				fi
				echo -e "${BACKING_UP}"
				if [[ ! -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences" ]]; then
					mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences"
				fi
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					if [[ "${completeLibraryBackup}" == YES ]]; then
						rsync -av /var/mobile/Library/Preferences/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences"
					else
						rsync -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences"
					fi
					applyNoColor
				else
					if [[ "${completeLibraryBackup}" == YES ]]; then
						rsync -q -av /var/mobile/Library/Preferences/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences"
					else
						rsync -q -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences"
					fi
				fi
				if [[ -z "$(ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Preferences")" ]]; then
					applyRed
					echo -e "ERROR!"
					applyNoColor
				else
					echo -e "${DONE}"
				fi
				PA2CKey
			elif [[ "${ANSWER_E}" == "/" ]]; then
				applyRed
				echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
				applyNoColor
				PA2CKey
			elif [[ "${ANSWER_E}" == quit || "${ANSWER_E}" == q ]]; then
				removeEmptyBackupFolder
				break
			elif [[ "${ANSWER_E}" == ods ]]; then
				openDevSettings
			elif [[ "${ANSWER_E}" == exit ]]; then
				ExitKey
			elif [[ -f "/var/mobile/Library/${ANSWER_E}" ]]; then
				echo -e "${BACKING_UP}"
				cp "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
				if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_E}" ]]; then
					echo -e "${DONE}"
				else
					applyRed
					echo -e "ERROR!"
					applyNoColor
				fi
				PA2CKey
			elif [[ -d "/var/mobile/Library/${ANSWER_E}" ]]; then
				echo -e "${BACKING_UP}"
				cp -r "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
				if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/${ANSWER_E}" ]]; then
					echo -e "${DONE}"
				else
					applyRed
					echo -e "ERROR!"
					applyNoColor
				fi
				PA2CKey
			else
				applyRed
				echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
				applyNoColor
				PA2CKey
			fi
		fi
	done
}

function showBackupedFilesBackup(){
	removeEmptyBackupFolder
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_5}"
	showLinesB
	if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/apt.txt" ]]; then
		echo -e "${BACKUPED_CYDIA_PACKAGES_LIST} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_PACKAGES_LIST} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/sources.list" ]]; then
		echo -e "${BACKUPED_CYDIA_SOURCE} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_SOURCE} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/metadata.cb0" ]]; then
		echo -e "${BACKUPED_CYDIA_METADATA} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_METADATA} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/Backup/${BACKUP_NAME}/Cydia/com.saurik.Cydia.plist" ]]; then
		echo -e "${BACKUPED_CYDIA_SETTINGS} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_SETTINGS} : ${NO}"
	fi
	showLinesB
	if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library" ]]; then
		echo -e "${BACKUPED_LIBRARY} : ${YES}"
		showLinesB
		if [[ "${detailFileListView}" == YES ]]; then
			ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
		else
			ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Library"
		fi
		if [[ "${detailFileListView}" == YES ]]; then
			if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches" ]]; then
				showLinesB
				applyPurple
				echo -e "/var/mobile/Library/Caches - /tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
				applyNoColor
				ls -l "/tmp/BackOn/Backup/${BACKUP_NAME}/Library/Caches"
			fi
		fi
	else
		echo -e "${BACKUPED_LIBRARY} : ${NO}"
	fi
	showLinesA
	PA2CKey
}

function saveBackup(){
	removeEmptyBackupFolder
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_6}"
	showLinesB
	if [[ -z "$(ls /tmp/BackOn/Backup/${BACKUP_NAME})" ]]; then
		applyRed
		echo -e "${NOTHING_TO_BACKUP}"
		applyNoColor
		showLinesA
		PA2CKey
	else
		cd /tmp/BackOn/Backup/${BACKUP_NAME}
		mkdir -p info
		echo -e "${TOOL_BUILD_NUM}" >> info/ToolBuildNum
		echo -e "${TOOL_BUILD_TYPE}" >> info/ToolBuildType
		echo -e "${TOOL_RELEASE}" >> info/ToolRelease
		echo -e "${OSVer}" >> info/OSVersion
		echo -e "${SAVING}"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			zip -r "${BackupPath}/${ANSWER_B}.zip" *
			applyNoColor
		else
			zip -q -r "${BackupPath}/${ANSWER_B}.zip" *
		fi
		if [[ ! -f "${BackupPath}/${ANSWER_B}.zip" ]]; then
			applyRed
			echo -e "ERROR!"
			applyNoColor
			quitTool_NoClear_Error
		fi
		echo -e "${SUCCEED_SAVE_BACKUP}"
		applyLightCyan
		echo -e "${SAVED_BACKUP_PATH} : ${BackupPath}/${ANSWER_B}.zip"
		applyNoColor
		showLinesA
		quitTool_NoClear
	fi
}

function defineBackupPath(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "${ENTER_BACKUP_PATH}"
		echo -e "(${ENTER_QUIT})"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_F
		applyNoColor

		if [[ -z "${ANSWER_F}" ]]; then
			:
		elif [[ "${ANSWER_F}" == xBackup || "${ANSWER_F}" == xbackup ]]; then
			if [[ -f "/var/mobile/Library/xBackup/Backups/backup.bk.zip" ]]; then
				ToRestoreBackupPath="/var/mobile/Library/xBackup/Backups/backup.bk.zip"
				break
			else
				applyRed
				echo -e "${NO_SUCH_XBACKUP}"
				applyNoColor
				PA2CKey
			fi
		elif [[ "${ANSWER_F}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_F}" == exit ]]; then
			ExitKey
		elif [[ "${ANSWER_F}" == q || "${ANSWER_F}" == quit ]]; then
			quitTool
		else
			if [[ -f "${ANSWER_F}" ]]; then
				ToRestoreBackupPath="${ANSWER_F}"
				break
			elif [[ -f "${ANSWER_F}.zip" ]]; then
				ToRestoreBackupPath="${ANSWER_F}.zip"
				break
			elif [[ -f "/${ANSWER_F}" ]]; then
				ToRestoreBackupPath="/${ANSWER_F}"
				break
			elif [[ -f "/${ANSWER_F}.zip" ]]; then
				ToRestoreBackupPath="/${ANSWER_F}.zip"
				break
			elif [[ -f "${BackupPath}/${ANSWER_F}" ]]; then
				ToRestoreBackupPath="${BackupPath}/${ANSWER_F}"
				break
			elif [[ -f "${BackupPath}/${ANSWER_F}.zip" ]]; then
				ToRestoreBackupPath="${BackupPath}/${ANSWER_F}.zip"
				break
			else
				applyRed
				echo -e "${NO_SUCH_FILE}"
				applyNoColor
				PA2CKey
			fi
		fi
	done
}

function unzipBackup(){
	echo -e "${UNPACKING}"
	if [[ "${showLog}" == YES ]]; then
		applyPurple
		unzip "${ToRestoreBackupPath}" -d /tmp/BackOn/Restore
		applyNoColor
		PA2CKey
	else
		applyPurple
		unzip -qq "${ToRestoreBackupPath}" -d /tmp/BackOn/Restore
		applyNoColor
	fi
}

function convertOldBackup(){
	for File in "apt.txt" "cydia.list" "metadata.plist"; do
		if [[ -f "/tmp/BackOn/Restore/${File}" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting ${File}..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir -p /tmp/BackOn/Restore/Cydia
			fi
			mv "/tmp/BackOn/Restore/${File}" "/tmp/BackOn/Restore/Cydia/${File}"
		fi
	done
	if [[ -f "/tmp/BackOn/Restore/Cydia/cydia.list" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting cydia.list..."
			applyNoColor
		fi
		mv "/tmp/BackOn/Restore/Cydia/cydia.list" "/tmp/BackOn/Restore/Cydia/sources.list"
	fi
	if [[ -f "/tmp/BackOn/Restore/Cydia/metadata.plist" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting metadata.plist..."
			applyNoColor
		fi
		mv "/tmp/BackOn/Restore/Cydia/metadata.plist" "/tmp/BackOn/Restore/Cydia/metadata.cb0"
	fi
	if [[ ! -f "/tmp/BackOn/Restore/Cydia/com.saurik.Cydia.plist" && -f "/tmp/BackOn/Restore/Library/Preferences/com.saurik.Cydia.plist" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting com.saurik.Cydia.plist..."
			applyNoColor
		fi
		cp /tmp/BackOn/Restore/Library/Preferences/com.saurik.Cydia.plist /tmp/BackOn/Restore/Cydia
	fi
	if [[ -f "/tmp/BackOn/Restore/info/ios_version" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting OSVersion..."
			applyNoColor
		fi
		mv "/tmp/BackOn/Restore/info/ios_version" "/tmp/BackOn/Restore/info/OSVersion"
	fi
}

function convertxBackup(){
	if [[ -d "/tmp/BackOn/Restore/var" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Running convertxBackup... (xBackup)"
			applyNoColor
		fi
		if [[ -f "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Cydia"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk" "/tmp/BackOn/Restore/Cydia/apt.txt"
		fi
		if [[ -f "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.list" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk.list..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Cydia"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.list" "/tmp/BackOn/Restore/Cydia/sources.list"
		fi
		if [[ -f "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.meta" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk.meta..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Cydia"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.meta" "/tmp/BackOn/Restore/Cydia/metadata.cb0"
		fi
		if [[ -f "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.icon" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk.icon..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Library" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Library"
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Library/SpringBoard" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Library/SpringBoard"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.icon" "/tmp/BackOn/Restore/Library/SpringBoard/IconState.plist"
		fi
		if [[ -d "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.prefs" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk.prefs..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Library" ]]; then
				mkdir -p "/tmp/BackOn/Restore/Library"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.prefs" "/tmp/BackOn/Restore/Library/Preferences"
		fi
		rm -rf "/tmp/BackOn/Restore/var"
	fi
}

function checkiOSVerMatching(){
	if [[ -f "/tmp/BackOn/Restore/info/OSVersion" ]]; then
		if [[ ! "${OSVer}" == "$(cat "/tmp/BackOn/Restore/info/OSVersion")" ]]; then
			ClearKey
			showLinesA
			echo -e "${OSVER_IS_NOT_MATCHING}"
			showLinesA
			PA2CKey
		fi
	fi
}

function showInitialRestoreMenu(){
	while(true); do
		removeEmptyRestoreFolder
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_7}"
		showLinesB
		if [[ -d "/tmp/BackOn/Restore/Cydia" ]]; then
			echo -e "(1) ${RESTORE_CYDIA_DATA}"
			echo -e "(2) ${RESTORE_SHOW_CYDIA_LIST}"
		else
			applyRed
			echo -e "(1) ${RESTORE_CYDIA_DATA} (${NOT_BACKUPED})"
			echo -e "(2) ${RESTORE_SHOW_CYDIA_LIST} (${NOT_BACKUPED})"
			applyNoColor
		fi
		if [[ -d "/tmp/BackOn/Restore/Library" ]]; then
			echo -e "(3) ${RESTORE_LIBRARY}"
		else
			applyRed
			echo -e "(3) ${RESTORE_LIBRARY} (${NOT_BACKUPED})"
			applyNoColor
		fi
		echo -e "(4) ${REBOOT}"
		echo -e "(q) ${QUIT}"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_H
		applyNoColor

		if [[ "${ANSWER_H}" == 1 ]]; then
			if [[ -d "/tmp/BackOn/Restore/Cydia" ]]; then
				restoreCydia
			else
				showNotSupportedFunction
			fi
		elif [[ "${ANSWER_H}" == 2 ]]; then
			if [[ -d "/tmp/BackOn/Restore/Cydia" ]]; then
				showBackupedFilesRestore
			else
				showNotSupportedFunction
			fi
		elif [[ "${ANSWER_H}" == 3 ]]; then
			if [[ -d "/tmp/BackOn/Restore/Library" ]]; then
				restoreLibrary
			else
				showNotSupportedFunction
			fi
		elif [[ "${ANSWER_H}" == 4 ]]; then
			rebootDevice
		elif [[ "${ANSWER_H}" == q || "${ANSWER_H}" == quit ]]; then
			quitTool
		elif [[ "${ANSWER_H}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_H}" == exit ]]; then
			ExitKey
		elif [[ -z "${ANSWER_H}" ]]; then
			:
		else
			showNotSupportedFunction
		fi
	done
}

function restoreCydia(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_8}"
	showLinesB
	if [[ "${skipRestore}" == YES ]]; then
		echo -e "Skipped."
	else
		killCydia
		echo -e "${RESTORING}"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Restoring : sources.list"
			applyNoColor
		fi
		cp "/tmp/BackOn/Restore/Cydia/sources.list" "/var/mobile/Library/Caches/com.saurik.Cydia/sources.list"
		chmod 755 "/var/mobile/Library/Caches/com.saurik.Cydia/sources.list"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Restoring : metadata.cb0"
			applyNoColor
		fi
		cp "/tmp/BackOn/Restore/Cydia/metadata.cb0" "/var/mobile/Library/Cydia"
		chmod 755 "/var/mobile/Library/Cydia/metadata.cb0"
		if [[ -f "/tmp/BackOn/Restore/Cydia/com.saurik.Cydia.plist" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Restoring : com.saurik.Cydia.plist"
				applyNoColor
			fi
			cp "/tmp/BackOn/Restore/Cydia/com.saurik.Cydia.plist" "/var/mobile/Library/Preferences"
			chmod 755 "/var/mobile/Library/Preferences/com.saurik.Cydia.plist"
		fi
		if [[ -d "/var/mobile/Library/Caches/com.saurik.Cydia/lists" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Removing : /var/mobile/Library/Caches/com.saurik.Cydia/lists"
				applyNoColor
			fi
			rm -rf "/var/mobile/Library/Caches/com.saurik.Cydia/lists"
		fi
		if [[ "${showLog}" == YES ]]; then
			echo -e "${REFRESHING_SOURCES}"
			applyPurple
			apt-get update
			applyNoColor
			echo -e "${DOWNLOADING_INSTALLING_PACKAGES}"
			applyPurple
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade
			applyNoColor
		else
			echo -e "${REFRESHING_SOURCES}"
			apt-get update > /dev/null 2>&1
			echo -e "${DOWNLOADING_INSTALLING_PACKAGES}"
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade > /dev/null 2>&1
		fi
		echo -e "${DONE}"
	fi
	showLinesA
	PA2CKey
}

function showBackupedFilesRestore(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_9}"
	showLinesB
	cat "/tmp/BackOn/Restore/Cydia/apt.txt"
	showLinesA
	PA2CKey
}

function restoreLibrary(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_10}"
		showLinesB
		if [[ "${detailFileListView}" == YES ]]; then
			ls -l "/tmp/BackOn/Restore/Library"
		else
			ls "/tmp/BackOn/Restore/Library"
		fi
		showLinesB
		echo -e "(${SHOW_GUIDE_10})"
		echo -e "(${ENTER_QUIT})"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_I
		applyNoColor

		if [[ "${ANSWER_I}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_I}" == q || "${ANSWER_I}" == quit ]]; then
			break
		elif [[ "${ANSWER_I}" == exit ]]; then
			ExitKey
		elif [[ "${ANSWER_I}" == all ]]; then
			showYESNO "${SHOW_INFO_11}" "${RESTORING_ALL_IS_NOT_RECOMMENDED}"
			if [[ "${ANSWER_YESNO}" == YES ]]; then
				if [[ "${skipRestore}" == YES ]]; then
					echo -e "Skipped."
					PA2CKey
				else
					echo -e "${RESTORING}"
					cp -r /tmp/BackOn/Restore/Library/* "/var/mobile/Library"
					chmod -R 755 /var/mobile/Library
					echo -e "${DONE}"
					PA2CKey
				fi
			elif [[ "${ANSWER_YESNO}" == NO ]]; then
				applyRed
				echo -e "${CANCELED}"
				applyNoColor
				PA2CKey
			fi
		elif [[ "${ANSWER_I}" == "/" ]]; then
			applyRed
			echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
			applyNoColor
			PA2CKey
		elif [[ -z "${ANSWER_I}" ]]; then
			:
		elif [[ -f "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${skipRestore}" == YES ]]; then
				echo -e "Skipped."
				PA2CKey
			else
				echo -e "${RESTORING}"
				cp "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo -e "${DONE}"
				PA2CKey
			fi
		elif [[ -d "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${skipRestore}" == YES ]]; then
				echo -e "Skipped."
				PA2CKey
			else
				echo -e "${RESTORING}"
				cp -r "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo -e "${DONE}"
				PA2CKey
			fi
		else
			applyRed
			echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
			applyNoColor
			PA2CKey
		fi
	done
}

function rebootDevice(){
	reboot
	quitTool
}

function customBackup(){
	if [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}" && ! -z "${BACKUP_NAME}" ]]; then
		if [[ ! -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom" ]]; then
			mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom"
		fi
		while(true); do
			ClearKey
			showLinesA
			echo -e "${SHOW_INFO_12}"
			showLinesB
			if [[ -z "$(ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom")" ]]; then
				applyRed
				echo -e "${NOT_BACKUPED_YET}"
				applyNoColor
			else
				for Name in `ls "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom"`; do
					echo -e -n "${Name} "
					applyLightCyan
					echo -e "(`cat "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${Name}/path"` | `cat "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${Name}/type"`)"
					applyNoColor
				done
			fi
			showLinesB
			echo -e "${ENTER_NICKNAME}"
			showLinesA
			applyLightCyan
			read -p "- " ANSWER_M
			applyNoColor

			if [[ -z "${ANSWER_M}" ]]; then
				:
			elif [[ "${ANSWER_M}" == ods ]]; then
				openDevSettings
			elif [[ "${ANSWER_M}" == exit ]]; then
				ExitKey
			elif [[ "${ANSWER_M}" == quit || "${ANSWER_M}" == q ]]; then
				removeEmptyBackupFolder
				break
			elif [[ -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}" ]]; then
				showYESNO "${ALREADY_EXISTS_WANT_TO_REMOVE}"
				if [[ "${ANSWER_YESNO}" == YES ]]; then
					echo -e "${REMOVING}"
					rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}"
					echo -e "${DONE}"
					PA2CKey
				elif [[ "${ANSWER_YESNO}" == NO ]]; then
					applyRed
					echo -e "${CANCELED}"
					applyNoColor
					PA2CKey
				fi
			elif [[ ! -d "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}" ]]; then
				mkdir -p "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/Backup"
				while(true); do
					ClearKey
					showLinesA
					echo -e "${SHOW_INFO_13}"
					showLinesB
					echo -e "${ENTER_FILE_PATH}"
					showLinesA
					applyLightCyan
					read -p "- " ANSWER_N
					applyNoColor

					if [[ -z "${ANSWER_N}" ]]; then
						:
					elif [[ "${ANSWER_N}" == ods ]]; then
						openDevSettings
					elif [[ "${ANSWER_N}" == exit ]]; then
						ExitKey
					elif [[ "${ANSWER_N}" == quit || "${ANSWER_N}" == q ]]; then
						rm -rf "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}"
						break
					elif [[ -f "${ANSWER_N}" ]]; then
						echo -e "${BACKING_UP}"
						cp "${ANSWER_N}" "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/Backup"
						echo -e "${ANSWER_N}" >> "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/path"
						echo -e "file" >> "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/type"
						echo -e "${DONE}"
						PA2CKey
						break
					elif [[ -d "${ANSWER_N}" ]]; then
						echo -e "${BACKING_UP}"
						cp -r "${ANSWER_N}" "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/Backup"
						echo -e "${ANSWER_N}" >> "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/path"
						echo -e "folder" >> "/tmp/BackOn/Backup/${BACKUP_NAME}/Custom/${ANSWER_M}/type"
						echo -e "${DONE}"
						PA2CKey
						break
					else
						applyRed
						echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
						applyNoColor
						PA2CKey
					fi
				done
			else
				showNotSupportedFunction
			fi
		done
	else
		applyRed
		echo -e "ERROR!"
		applyNoColor
		PA2CKey
	fi
}

function customRestore(){
	if [[ -d "/tmp/BackOn/Restore/Custom" ]]; then
		while(true); do
			ClearKey
			showLinesA
			echo -e "${SHOW_INFO_14}"
			showLinesB
			for Name in `ls "/tmp/BackOn/Restore/Custom"`; do
				echo -e -n "${Name} "
				applyLightCyan
				echo -e "(`cat "/tmp/BackOn/Restore/Custom/${Name}/path"` | `cat "/tmp/BackOn/Restore/Custom/${Name}/type"`)"
				applyNoColor
			done
			showLinesA
			applyLightCyan
			read -p "- " ANSWER_O
			applyNoColor

			if [[ -z "${ANSWER_O}" ]]; then
				:
			elif [[ "${ANSWER_O}" == ods ]]; then
				openDevSettings
			elif [[ "${ANSWER_O}" == exit ]]; then
				ExitKey
			elif [[ "${ANSWER_O}" == quit || "${ANSWER_O}" == q ]]; then
				break
			elif [[ -d "/tmp/BackOn/Restore/Custom/${ANSWER_O}" ]]; then
				if [[ "${skipRestore}" == YES ]]; then
					echo -e "Skipped."
					PA2CKey
				else
					if [[ "$(cat "/tmp/BackOn/Restore/Custom/${ANSWER_O}/type")" == file ]]; then
						echo -e "${RESTORING}"
						cp "/tmp/BackOn/Restore/Custom/${ANSWER_O}/Backup/`ls "/tmp/BackOn/Restore/Custom/${ANSWER_O}/Backup"`" "`cat "/tmp/BackOn/Restore/Custom/${ANSWER_O}/path"`"
						echo -e "${DONE}"
						PA2CKey
					elif [[ "$(cat "/tmp/BackOn/Restore/Custom/${ANSWER_O}/type")" == folder ]]; then
						echo -e "${RESTORING}"
						cp -r "/tmp/BackOn/Restore/Custom/${ANSWER_O}/Backup/`ls "/tmp/BackOn/Restore/Custom/${ANSWER_O}/Backup"`" "`cat "/tmp/BackOn/Restore/Custom/${ANSWER_O}/path"`"
						echo -e "${DONE}"
						PA2CKey
					else
						applyRed
						echo -e "ERROR!"
						applyNoColor
						PA2CKey
					fi
				fi
			else
				showNotSupportedFunction
			fi
		done
	else
		applyRed
		echo -e "ERROR!"
		applyNoColor
		PA2CKey
	fi
}

function runUpdate(){
	if [[ "${UpdaterVersion}" == 1 ]]; then
		installUpdate_old
	elif [[ "${UpdaterVersion}" == 2 ]]; then
		installUpdate
	else
		applyRed
		echo -e "ERROR! (UpdaterVersion is wrong.)"
		applyNoColor
		PA2CKey
	fi
}

function showUpdaterVersion(){
	applyPurple
	echo -e "UpdaterVersion : ${UpdaterVersion}"
	applyNoColor
}

function installUpdate(){
	ClearKey
	local COUNT=0
	while [[ ! "$COUNT" == 3 ]]; do
		showLinesA
		if [[ "${showLog}" == YES ]]; then
			showUpdaterVersion
		fi
		echo -e "${DOWNLOADING}"
		if [[ -d "/tmp/BackOn/Update" ]]; then
			rm -rf "/tmp/BackOn/Update"
		fi
		mkdir -p "/tmp/BackOn/Update"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			wget --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "${UpdateURL}"
			applyNoColor
		else
			applyPurple
			wget -q --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "${UpdateURL}"
			applyNoColor
		fi
		if [[ -f "/tmp/BackOn/Update/master.zip" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				unzip "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
				applyNoColor
			else
				applyPurple
				unzip -qq "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
				applyNoColor
			fi
			if [[ -d "/tmp/BackOn/Update/master/BackOn-master/" ]]; then
				if [[ -z "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]]; then
					applyRed
					echo -e "ERROR!"
					applyNoColor
					break
				fi
				if [ ${TOOL_BUILD_NUM} -ge "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]; then
					if [[ ! "${ForceInstallUpdate}" == YES ]]; then
						echo -e "${UP_TO_DATE}"
						break
					fi
				fi
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					echo -e "Downloaded : $(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build") / Current : ${TOOL_BUILD_NUM}"
					applyNoColor
					PA2CKey
				fi
				echo -e "${INSTALLING}"
				if [[ -d "/tmp/BackOn/Update/info" ]]; then
					rm -rf "/tmp/BackOn/Update/info"
				fi
				mkdir -p "/tmp/BackOn/Update/info"
				echo -e "${runUpdateODS}" >> "/tmp/BackOn/Update/info/runUpdateODS"
				echo -e "${UpdateBuildType}" >> "/tmp/BackOn/Update/info/UpdateBuildType"
				echo -e "${updateWithDEBInstall}" >> "/tmp/BackOn/Update/info/updateWithDEBInstall"
				echo -e "${UpdaterVersion}" >> "/tmp/BackOn/Update/info/UpdaterVersion"
				echo -e "${showLog}" >> "/tmp/BackOn/Update/info/showLog"
				echo -e "${applyColorScheme}" >> "/tmp/BackOn/Update/info/applyColorScheme"
				echo -e "${showPA2C}" >> "/tmp/BackOn/Update/info/showPA2C"
				echo -e "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" >> "/tmp/BackOn/Update/info/UpdateBuildVersion"
				cd "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}"
				chmod +x "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/update-script"
				./update-script
				showLinesA
				quitTool_NoClear
			else
				applyRed
				echo -e "ERROR!"
				applyNoColor
				break
			fi
		else
			applyRed
			echo -e "ERROR!"
			applyNoColor
			break
		fi
	done
	showLinesA
	PA2CKey
}

function installUpdate_old(){
	ClearKey
	local COUNT=0
	while [[ ! "$COUNT" == 3 ]]; do
		showLinesA
		if [[ "${showLog}" == YES ]]; then
			showUpdaterVersion
		fi
		echo -e "${DOWNLOADING}"
		if [[ -d "/tmp/BackOn/Update" ]]; then
			rm -rf "/tmp/BackOn/Update"
		fi
		mkdir -p "/tmp/BackOn/Update"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			wget --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "https://github.com/pookjw/BackOn/archive/master.zip"
			applyNoColor
		else
			applyPurple
			wget -q --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "https://github.com/pookjw/BackOn/archive/master.zip"
			applyNoColor
		fi
		if [[ -f "/tmp/BackOn/Update/master.zip" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				unzip "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
				applyNoColor
			else
				applyPurple
				unzip -qq "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
				applyNoColor
			fi
			if [[ -d "/tmp/BackOn/Update/master/BackOn-master/" ]]; then
				if [[ -z "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]]; then
					applyRed
					echo -e "ERROR!"
					applyNoColor
					break
				fi
				if [ ${TOOL_BUILD_NUM} -ge "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]; then
					if [[ ! "${ForceInstallUpdate}" == YES ]]; then
						echo -e "${UP_TO_DATE}"
						break
					fi
				fi
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					echo -e "Downloaded : $(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build") / Current : ${TOOL_BUILD_NUM}"
					applyNoColor
					PA2CKey
				fi
				echo -e "${INSTALLING}"
				chmod +x "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/update-script"
				cd "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}"
				./update-script
				showLinesA
				quitTool_NoClear
			else
				applyRed
				echo -e "ERROR!"
				applyNoColor
				break
			fi
		else
			applyRed
			echo -e "ERROR!"
			applyNoColor
			break
		fi
	done
	showLinesA
	PA2CKey
}

##############################################
loadSettings
if [[ "${setDefaultLanguage}" == Korean ]]; then
	setKorean
else
	setEnglish
fi
checkOS
checkRoot "${1}"
if [[ -d "/var/mobile/Library/Preferences/BackOn/DevSettings" ]]; then
	saveSettings
fi
OSVer="$(sw_vers -productVersion)"
UpdateURL="https://github.com/pookjw/BackOn/archive/master.zip"
if [[ -d "/tmp/BackOn" ]]; then
	rm -rf "/tmp/BackOn"
fi
mkdir -p /tmp/BackOn
if [[ "${1}" == "-ods" ]]; then
	openDevSettings
elif [[ "${1}" == "-update" ]]; then
	runUpdate
fi
while(true); do
	ClearKey
	showLinesA
	echo -e "BackOn ${TOOL_BUILD_TYPE}-${TOOL_BUILD_NUM}-${TOOL_RELEASE} - ${LANGUAGE}"
	showLinesB
	echo -e "(1) ${CREATE_BACKUP}"
	echo -e "(2) ${RESTORE_FROM_BACKUP}"
	if [[ "${LANGUAGE}" == English ]]; then
		echo -e "(3) 한국어로 변경 (Change to Korean)"
	elif [[ "${LANGUAGE}" == Korean ]]; then
		echo -e "(3) Change to English."
	fi
	echo -e "(4) ${CHECK_FOR_UPDATES}"
	if [[ "${enabledODS}" == YES ]]; then
		echo -e "(ods) Open DevSettings."
	fi
	echo -e "(q) ${QUIT}"
	showLinesB
	echo -e "(${ENTER_TEXT})"
	showLinesA
	applyLightCyan
	read -p "- " ANSWER_A
	applyNoColor

	if [[ "${ANSWER_A}" == 1 ]]; then
		if [[ -d "/tmp/BackOn/Backup" ]]; then
			rm -rf "/tmp/BackOn/Backup"
		fi
		mkdir -p /tmp/BackOn/Backup
		defineBackupName
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "${WILL_CREATE_BACKUP_NAME} : ${BACKUP_NAME}"
			applyNoColor
			PA2CKey
		fi
		showInitialBackupMenu
	elif [[ "${ANSWER_A}" == 2 ]]; then
		defineBackupPath
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Recognized backup file path : ${ToRestoreBackupPath}"
			applyNoColor
			PA2CKey
		fi
		if [[ -d "/tmp/BackOn/Restore" ]]; then
			rm -rf /tmp/BackOn/Restore
		fi
		mkdir -p /tmp/BackOn/Restore
		unzipBackup
		convertxBackup
		convertOldBackup
		if [[ "${showLog}" == YES ]]; then
			PA2CKey
		fi
		if [[ ! -d /tmp/BackOn/Restore/Cydia && ! -d /tmp/BackOn/Restore/Library && ! -d /tmp/BackOn/Restore/Custom ]]; then
			applyRed
			echo -e "${NOT_BACKON_BACKUP}"
			applyNoColor
			quitTool_NoClear_Error
		fi
		checkiOSVerMatching
		showInitialRestoreMenu
	elif [[ "${ANSWER_A}" == 3 ]]; then
		switchLanguage
	elif [[ "${ANSWER_A}" == 4 ]]; then
		runUpdate
	elif [[ "${ANSWER_A}" == quit || "${ANSWER_A}" == q ]]; then
		quitTool
	elif [[ "${ANSWER_A}" == ods ]]; then
		openDevSettings
	elif [[ "${ANSWER_A}" == exit ]]; then
		ExitKey
	elif [[ -z "${ANSWER_A}" ]]; then
		:
	else
		showNotSupportedFunction
	fi
done