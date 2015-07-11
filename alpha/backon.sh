#!/bin/sh
##############################################
# BackOn alpha-113
TOOL_BUILD_TYPE=alpha
TOOL_BUILD_NUM=113
##############################################

function setEnglish(){
	LANGUAGE="English"
	NOT_RUN_AS_ROOT="You didn't run as root! Please enter root password. (Initial password is 'alpine')"
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
	ENTER_BACKUP_NAME="Enter backup name which you want to do. (If you want to set backup name to current date and time, enter 'date'.)"
	BACKUP_CANCELED="Backup was canceled because form was empty."
	FORM_IS_EMPTY="Form is empty."
	NOT_SUPPORTED_FUNCTION="Not supported function."
	NO_SUCH_FILE_OR_DIRECTORY="No such file or directory."
	NO_SUCH_FILE="No such file."
	NO_SUCH_XBACKUP="I can't find xBackup's backup file. (/var/mobile/Library/xBackup/Backups/backup.bk.zip)"
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
	REMOVING="Removing..."
	UNPACKING="Unpacking..."
	CLOSING_TOOL="Closing tool..."
	ENTER_BACKUP_PATH="Enter backup file path which you saved. (Enter 'xbackup' command to restore xBackup's backup file.)"
	NOT_BACKON_BACKUP="This is not a BackOn's backup."
	DONE="Done."
	YES="YES"
	NO="NO"
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia packages list"
	BACKUPED_CYDIA_SOURCE="Cydia source"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="Succeed to save backup!"
	OSVER_IS_NOT_MATCHING="Backup's iOS Version is not matching with current iOS Version. It will cause problem."
	RESTORE_CYDIA_DATA="Restore Cydia sources and packages list."
	RESTORE_SHOW_CYDIA_LIST="Show backuped Cydia packages list."
	RESTORE_LIBRARY="Restore Library."
	REBOOT="Reboot."
	RESTORING="Restoring..."
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
}

function setKorean(){
	LANGUAGE="Korean"
	NOT_RUN_AS_ROOT="root로 로그인되지 않았습니다! root 비밀번호를 입력해 주세요. (초기 비밀번호는 'alpine'입니다.)"
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
	FORM_IS_EMPTY="입력란이 비었습니다."
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
	REMOVING="삭제 중..."
	UNPACKING="압축해제 중..."
	CLOSING_TOOL="툴 종료 중..."
	ENTER_BACKUP_PATH="백업 파일의 경로를 입력해 주세요. ('xbakcup' 명령어를 입력하시면 xBackup의 백업 파일을 복원합니다.)"
	NOT_BACKON_BACKUP="이것은 BackOn의 백업 파일이 아닙니다."
	DONE="완료"
	YES="예"
	NO="아니오"
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia 패키지 목록"
	BACKUPED_CYDIA_SOURCE="Cydia 소스"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="백업에 성공했습니다!"
	OSVER_IS_NOT_MATCHING="백업할 때의 iOS 버전이 현재 기기의 iOS 버전과 일치하지 않습니다. 이것은 문제를 야기할 수 있습니다."
	RESTORE_CYDIA_DATA="Cydia 소스, 패키지 복원"
	RESTORE_SHOW_CYDIA_LIST="백업한 Cydia 패키지 목록 보기"
	RESTORE_LIBRARY="Library 복원"
	REBOOT="재부팅"
	RESTORING="복원 중..."
	SHOW_GUIDE_3="백업을 원하는 폴더/파일의 이름을 입력하시면 백업됩니다. 'all'을 입력하면 모두 백업할 수 있습니다. 'delete' 명령어로 백업한 백업 파일을 삭제할 수 있습니다."
	SHOW_GUIDE_4="삭제를 원하는 폴더/파일의 이름을 입력하시면 됩니다. 'all'을 입력하면 모두 지울 수 있습니다."
	SHOW_GUIDE_10="복원을 원하는 폴더/파일의 이름을 입력하시면 복원됩니다. 'all'을 입력하면 모두 복원할 수 있습니다."
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
}

function openDevSettings(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "DevSettings - ${TOOL_BUILD_TYPE}-${TOOL_BUILD_NUM}"
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
		if [[ "${skipCheckRoot}" == YES ]]; then
			echo -e "(14) skipCheckRoot : YES"
		elif [[ "${skipCheckRoot}" == NO ]]; then
			echo -e "(14) skipCheckRoot : NO"
		fi
		if [[ "${runUpdateODS}" == YES ]]; then
			echo -e "(15) runUpdateODS : YES"
		elif [[ "${runUpdateODS}" == NO ]]; then
			echo -e "(15) runUpdateODS : NO"
		fi
		echo -e "(16) Check update now."
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
			read -p "Query : " UpdateURL
			applyNoColor
			if [[ -z "${UpdateURL}" ]]; then
				UpdateURL="https://github.com/pookjw/BackOn/archive/master.zip"
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
			if [[ "${skipCheckRoot}" == YES ]]; then
				skipCheckRoot=NO
			elif [[ "${skipCheckRoot}" == NO ]]; then
				skipCheckRoot=YES
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
			installUpdate
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
		elif [[ "${ANSWER_D}" == l || "${ANSWER_D}" == ls ]]; then
			ClearKey
			showLinesA
			echo -e "/tmp/BackOn/"
			ls -l "/tmp/BackOn"
			echo -e -e "\n/tmp/BackOn/Cydia"
			ls -l "/tmp/BackOn/Cydia"
			echo -e -e "\n/tmp/BackOn/Library"
			ls -l "/tmp/BackOn/Library"
			echo -e -e "\n/tmp/BackOn/${BACKUP_NAME}"
			ls -l "/tmp/BackOn/${BACKUP_NAME}"
			echo -e -e "\n/tmp/BackOn/${BACKUP_NAME}/Cydia"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Cydia"
			echo -e -e "\n/tmp/BackOn/${BACKUP_NAME}/Library"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Library"
			echo -e -e "\n/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
			echo -e -e "\n/tmp/BackOn/Restore"
			ls -l "/tmp/BackOn/Restore"
			echo -e -e "\n/tmp/BackOn/Restore/Cydia"
			ls -l "/tmp/BackOn/Restore/Cydia"
			echo -e -e "\n/tmp/BackOn/Restore/Library"
			ls -l "/tmp/BackOn/Restore/Library"
			echo -e -e "\n/tmp/BackOn/Restore/info"
			ls -l "/tmp/BackOn/Restore/info"
			showLinesA
			showPressAnyKeyToContinue
		elif [[ "${ANSWER_D}" == save ||  "${ANSWER_D}" == s ]]; then
			saveSettings
			echo -e "Session was done."
			loadSettings
			break
		elif [[ "${ANSWER_D}" == disable || "${ANSWER_D}" == d ]]; then
			rm -rf /var/mobile/Library/Preferences/BackOn
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
	if [[ -d "/var/mobile/Library/Preferences/BackOn" ]]; then
		rm -rf /var/mobile/Library/Preferences/BackOn
	fi
	mkdir /var/mobile/Library/Preferences/BackOn
	echo -e "${ExitKey}" >> /var/mobile/Library/Preferences/BackOn/ExitKey
	echo -e "${showLog}" >> /var/mobile/Library/Preferences/BackOn/showLog
	echo -e "${showPA2C}" >> /var/mobile/Library/Preferences/BackOn/showPA2C
	echo -e "${skipRestore}" >> /var/mobile/Library/Preferences/BackOn/skipRestore
	echo -e "${UpdateURL}" >> /var/mobile/Library/Preferences/BackOn/UpdateURL
	echo -e "${UpdateBuildType}" >> /var/mobile/Library/Preferences/BackOn/UpdateBuildType
	echo -e "${ForceInstallUpdate}" >> /var/mobile/Library/Preferences/BackOn/ForceInstallUpdate
	echo -e "${BackupPath}" >> /var/mobile/Library/Preferences/BackOn/BackupPath
	echo -e "${ClearKey}" >> /var/mobile/Library/Preferences/BackOn/ClearKey
	echo -e "${setDefaultLanguage}" >> /var/mobile/Library/Preferences/BackOn/setDefaultLanguage
	echo -e "${skipCheckRoot}" >> /var/mobile/Library/Preferences/BackOn/skipCheckRoot
	echo -e "${runUpdateODS}" >> /var/mobile/Library/Preferences/BackOn/runUpdateODS
	echo -e "${applyColorScheme}" >> /var/mobile/Library/Preferences/BackOn/applyColorScheme
	echo -e "${DynamicLine}" >> /var/mobile/Library/Preferences/BackOn/DynamicLine
}


function loadSettings(){
	if [[ -f "/var/mobile/Library/Preferences/BackOn/ExitKey" ]]; then
		ExitKey="$(cat "/var/mobile/Library/Preferences/BackOn/ExitKey")"
	else
		ExitKey=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/showLog" ]]; then
		showLog="$(cat "/var/mobile/Library/Preferences/BackOn/showLog")"
	else
		showLog=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/showPA2C" ]]; then
		showPA2C="$(cat "/var/mobile/Library/Preferences/BackOn/showPA2C")"
	else
		showPA2C=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/skipRestore" ]]; then
		skipRestore="$(cat "/var/mobile/Library/Preferences/BackOn/skipRestore")"
	else
		skipRestore=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/UpdateURL" ]]; then
		UpdateURL="$(cat "/var/mobile/Library/Preferences/BackOn/UpdateURL")"
	else
		UpdateURL="https://github.com/pookjw/BackOn/archive/master.zip"
	fi
	if [[ -f "/var/mobile/Library/Caches/libactivator.plist" ]]; then
		MakeFakeActivatorFile=YES
	else
		MakeFakeActivatorFile=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/UpdateBuildType" ]]; then
		UpdateBuildType="$(cat "/var/mobile/Library/Preferences/BackOn/UpdateBuildType")"
	else
		UpdateBuildType="${TOOL_BUILD_TYPE}"
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/ForceInstallUpdate" ]]; then
		ForceInstallUpdate="$(cat "/var/mobile/Library/Preferences/BackOn/ForceInstallUpdate")"
	else
		ForceInstallUpdate=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/BackupPath" ]]; then
		BackupPath="$(cat /var/mobile/Library/Preferences/BackOn/BackupPath)"
	else
		BackupPath=/var/mobile/Media
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/ClearKey" ]]; then
		ClearKey="$(cat "/var/mobile/Library/Preferences/BackOn/ClearKey")"
	else
		ClearKey=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/setDefaultLanguage" ]]; then
		setDefaultLanguage="$(cat "/var/mobile/Library/Preferences/BackOn/setDefaultLanguage")"
	else
		setDefaultLanguage=English
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/skipCheckRoot" ]]; then
		skipCheckRoot="$(cat "/var/mobile/Library/Preferences/BackOn/skipCheckRoot")"
	else
		skipCheckRoot=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/runUpdateODS" ]]; then
		runUpdateODS="$(cat "/var/mobile/Library/Preferences/BackOn/runUpdateODS")"
	else
		runUpdateODS=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/applyColorScheme" ]]; then
		applyColorScheme="$(cat "/var/mobile/Library/Preferences/BackOn/applyColorScheme")"
	else
		applyColorScheme=YES
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/DynamicLine" ]]; then
		DynamicLine="$(cat "/var/mobile/Library/Preferences/BackOn/DynamicLine")"
	else
		DynamicLine=YES
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
		echo -e
	else
		echo "***************"
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
		echo -e
	else
		echo "---------------"
	fi
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

function showPressAnyKeyToContinue(){
	applyLightCyan
	read -s -n 1 -p "${PRESS_ANY_KEY_TO_CONTINUE}"
	applyNoColor
	echo -e
}

function showNotSupportedFunction(){
	applyRed
	echo -e "${NOT_SUPPORTED_FUNCTION}"
	applyNoColor
	showPressAnyKeyToContinue
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
		showPressAnyKeyToContinue
	fi
}

function ClearKey(){
	if [[ "${ClearKey}" == YES ]]; then
		clear
	fi
}

function checkRoot(){
	if [[ ! "${skipCheckRoot}" == YES ]]; then
		if [ "$(id -u)" != "0" ]; then
			applyRed
			echo -e "${NOT_RUN_AS_ROOT}"
			applyNoColor
			if [[ "${InitialRunDevSettings}" == YES ]]; then
				su -c "backon -ods"
			else
				su -c "backon"
			fi
			quitTool_NoClear
		fi
	fi
}

function switchLanguage(){
	if [[ "${LANGUAGE}" == English ]]; then
		setKorean
	elif [[ "${LANGUAGE}" == Korean ]]; then
		setEnglish
	fi
}

function killMobileCydia(){
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

function quitTool(){
	ClearKey
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_Error(){
	ClearKey
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 1
}

function quitTool_NoClear(){
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo "${CLOSING_TOOL}"
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_NoClear_Error(){
	applyNoColor
	if [[ -d /tmp/BackOn ]]; then
		echo "${CLOSING_TOOL}"
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
			applyRed
			echo -e "${FORM_IS_EMPTY}"
			applyNoColor
			showPressAnyKeyToContinue
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
			if [[ -d "/tmp/BackOn/${ANSWER_B}" ]]; then
				rm -rf "/tmp/BackOn/${ANSWER_B}"
			fi
			mkdir "/tmp/BackOn/${ANSWER_B}"
			if [[ ! -d "/tmp/BackOn/${ANSWER_B}" ]]; then
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
	echo -e "${BACKING_UP}"
	if [[ -d "/tmp/BackOn/${BACKUP_NAME}/Cydia" ]]; then
		rm -rf "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	fi
	mkdir "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	killMobileCydia
	dpkg --get-selections > "/tmp/BackOn/${BACKUP_NAME}/Cydia/apt.txt"
	cp /etc/apt/sources.list.d/cydia.list "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	if [[ -f /var/lib/cydia/metadata.plist ]]; then
		cp /var/lib/cydia/metadata.plist "/tmp/BackOn/${BACKUP_NAME}/Cydia/metadata.cb0"
	fi
	if [[ -f /var/mobile/Library/Cydia/metadata.cb0 ]]; then
		cp /var/mobile/Library/Cydia/metadata.cb0 "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	fi
	echo -e "${DONE}"
	showLinesA
	showPressAnyKeyToContinue
}

function backupLibrary(){
	if [[ ! -d "/tmp/BackOn/${BACKUP_NAME}/Library" ]]; then
		mkdir "/tmp/BackOn/${BACKUP_NAME}/Library"
	fi
	while(true); do
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_3}"
		showLinesB
		if [[ "${showLog}" == YES ]]; then
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
					rsync -av --exclude="Assets" --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/${BACKUP_NAME}/Library"
					applyNoColor
				else
					rsync -q -av --exclude="Assets" --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/${BACKUP_NAME}/Library"
				fi
				if [[ -f "/var/mobile/Library/Caches/libactivator.plist" ]]; then
					if [[ ! -d "/tmp/BackOn/${BACKUP_NAME}/Library/Caches" ]]; then
						mkdir "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
					fi
					cp /var/mobile/Library/Caches/libactivator.plist "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
					if [[ "${showLog}" == YES ]]; then
						applyPurple
						echo -e "Backuped libactivator.plist."
						applyNoColor
					fi
				fi
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			elif [[ "${ANSWER_E}" == delete ]]; then
				while(true); do
					if [[ -z "$(ls "/tmp/BackOn/${BACKUP_NAME}/Library")" ]]; then
						ClearKey
						showLinesA
						echo -e "${SHOW_INFO_4}"
						showLinesB
						echo -e "${NOTHING_TO_DELETE}"
						showLinesA
						showPressAnyKeyToContinue
						break
					fi
					ClearKey
					showLinesA
					echo -e "${SHOW_INFO_4}"
					showLinesB
					if [[ "${showLog}" == YES ]]; then
						ls -l "/tmp/BackOn/${BACKUP_NAME}/Library"
					else
						ls "/tmp/BackOn/${BACKUP_NAME}/Library"
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
							rm -rf "/tmp/BackOn/${BACKUP_NAME}/Library"
							mkdir "/tmp/BackOn/${BACKUP_NAME}/Library"
							echo -e "${DONE}"
							showPressAnyKeyToContinue
						elif [[ "${ANSWER_J}" == q || "${ANSWER_J}" == quit ]]; then
							break
						elif  [[ "${ANSWER_J}" == ods ]]; then
							openDevSettings
						elif [[ "${ANSWER_J}" == exit ]]; then
							ExitKey
						elif [[ -f "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo -e "${REMOVING}"
							rm "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo -e "${DONE}"
							showPressAnyKeyToContinue
						elif [[ -d "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo -e "${REMOVING}"
							rm -rf "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo -e "${DONE}"
							showPressAnyKeyToContinue
						else
							applyRed
							echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
							applyNoColor
							PRESS_ANY_KEY_TO_CONTINUE
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
				if [[ ! -d "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences" ]]; then
					mkdir "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
				fi
				if [[ "${showLog}" == YES ]]; then
					applyPurple
					rsync -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
					applyNoColor
				else
					rsync -q -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
				fi
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			elif [[ "${ANSWER_E}" == quit || "${ANSWER_E}" == q ]]; then
				if [[ -z "$(ls "/tmp/BackOn/${BACKUP_NAME}/Library")" ]]; then
					rm -rf "/tmp/BackOn/${BACKUP_NAME}/Library"
				fi
				break
			elif [[ "${ANSWER_E}" == ods ]]; then
				openDevSettings
			elif [[ "${ANSWER_E}" == exit ]]; then
				ExitKey
			elif [[ -f "/var/mobile/Library/${ANSWER_E}" ]]; then
				echo -e "${BACKING_UP}"
				cp "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/${BACKUP_NAME}/Library"
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			elif [[ -d "/var/mobile/Library/${ANSWER_E}" ]]; then
				echo -e "${BACKING_UP}"
				cp -r "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/${BACKUP_NAME}/Library"
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			else
				applyRed
				echo -e "${NO_SUCH_FILE_OR_DIRECTORY} : ${ANSWER_E}"
				applyNoColor
				showPressAnyKeyToContinue
			fi
		fi
	done
}

function showBackupedFilesBackup(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_5}"
	showLinesB
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/apt.txt" ]]; then
		echo -e "${BACKUPED_CYDIA_PACKAGES_LIST} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_PACKAGES_LIST} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/cydia.list" ]]; then
		echo -e "${BACKUPED_CYDIA_SOURCE} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_SOURCE} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/metadata.cb0" ]]; then
		echo -e "${BACKUPED_CYDIA_METADATA} : ${YES}"
	else
		echo -e "${BACKUPED_CYDIA_METADATA} : ${NO}"
	fi
	if [[ -d "/tmp/BackOn/${BACKUP_NAME}/Library" ]]; then
		echo -e "${BACKUPED_LIBRARY} : ${YES}"
		showLinesB
		if [[ "${showLog}" == YES ]]; then
			ls -l "/tmp/BackOn/$BACKUP_NAME/Library"
		else
			ls "/tmp/BackOn/$BACKUP_NAME/Library"
		fi
		if [[ "${showLog}" == YES ]]; then
			if [[ -d "/tmp/BackOn/$BACKUP_NAME/Library/Caches" ]]; then
				showLinesB
				ls -l "/tmp/BackOn/$BACKUP_NAME/Library/Caches"
			fi
		fi
	else
		echo -e "${BACKUP_LIBRARY} : ${NO}"
	fi
	showLinesA
	showPressAnyKeyToContinue
}

function saveBackup(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_6}"
	showLinesB
	if [[ -z "$(ls /tmp/BackOn/${BACKUP_NAME})" ]]; then
		applyRed
		echo -e "${NOTHING_TO_BACKUP}"
		applyNoColor
		showLinesA
		showPressAnyKeyToContinue
	else
		cd /tmp/BackOn/$BACKUP_NAME
		mkdir info
		echo -e "${TOOL_BUILD_NUM}" >> info/ToolBuildNum
		echo -e "${TOOL_BUILD_TYPE}" >> info/ToolBuildType
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
		echo -e "${SUCCEED_SAVE_BACKUP} (${BackupPath}/${ANSWER_B}.zip)"
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

		if [[ "${ANSWER_F}" == xBackup || "${ANSWER_F}" == xbackup ]]; then
			if [[ -f "/var/mobile/Library/xBackup/Backups/backup.bk.zip" ]]; then
				ToRestoreBackupPath="/var/mobile/Library/xBackup/Backups/backup.bk.zip"
				break
			else
				applyRed
				echo -e "${NO_SUCH_XBACKUP}"
				applyNoColor
				showPressAnyKeyToContinue
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
				showPressAnyKeyToContinue
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
	else
		unzip -qq "${ToRestoreBackupPath}" -d /tmp/BackOn/Restore
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
				mkdir /tmp/BackOn/Restore/Cydia
			fi
			mv "/tmp/BackOn/Restore/${File}" "/tmp/BackOn/Restore/Cydia/${File}"
		fi
	done
	if [[ -f "/tmp/BackOn/Restore/Cydia/metadata.plist" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting metadata.cb0..."
			applyNoColor
		fi
		mv "/tmp/BackOn/Restore/Cydia/metadata.plist" "/tmp/BackOn/Restore/Cydia/metadata.cb0"
	fi
	if [[ -f "/tmp/BackOn/Restore/info/ios_version" ]]; then
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Converting ios_version..."
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
				mkdir "/tmp/BackOn/Restore/Cydia"
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
				mkdir "/tmp/BackOn/Restore/Cydia"
			fi
			mv "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.list" "/tmp/BackOn/Restore/Cydia/cydia.list"
		fi
		if [[ -f "/tmp/BackOn/Restore/var/mobile/Library/xBackup/Backups/backup.bk.meta" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				echo -e "Converting backup.bk.meta..."
				applyNoColor
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir "/tmp/BackOn/Restore/Cydia"
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
				mkdir "/tmp/BackOn/Restore/Library"
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Library/SpringBoard" ]]; then
				mkdir "/tmp/BackOn/Restore/Library/SpringBoard"
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
				mkdir "/tmp/BackOn/Restore/Library"
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
			echo "${OSVER_IS_NOT_MATCHING}"
			showLinesA
			showPressAnyKeyToContinue
		fi
	fi
}

function showInitialRestoreMenu(){
	while(true); do
		if [[ -d "/tmp/BackOn/Restore/Cydia" ]]; then
			RestoreCydiaIsAvailable=YES
		else
			RestoreCydiaIsAvailable=NO
		fi
		if [[ -d "/tmp/BackOn/Restore/Library" ]]; then
			RestoreLibraryIsAvailable=YES
		else
			RestoreLibraryIsAvailable=NO
		fi
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_7}"
		showLinesB
		if [[ "${RestoreCydiaIsAvailable}" == YES ]]; then
			echo -e "(1) ${RESTORE_CYDIA_DATA}"
			echo -e "(2) ${RESTORE_SHOW_CYDIA_LIST}"
		fi
		if [[ "${RestoreLibraryIsAvailable}" == YES ]]; then
			echo -e "(3) ${RESTORE_LIBRARY}"
		fi
		echo -e "(4) ${REBOOT}"
		echo -e "(q) ${QUIT}"
		showLinesA
		applyLightCyan
		read -p "- " ANSWER_H
		applyNoColor

		if [[ "${ANSWER_H}" == 1 ]]; then
			if [[ "${RestoreCydiaIsAvailable}" == YES ]]; then
				restoreCydia
			else
				showNotSupportedFunction
			fi
		elif [[ "${ANSWER_H}" == 2 ]]; then
			if [[ "${RestoreCydiaIsAvailable}" == YES ]]; then
				showBackupedFilesRestore
			else
				showNotSupportedFunction
			fi
		elif [[ "${ANSWER_H}" == 3 ]]; then
			if [[ "${RestoreLibraryIsAvailable}" == YES ]]; then
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
		killMobileCydia
		echo -e "${RESTORING}"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Restoring : sources.list.d"
			applyNoColor
		fi
		cp "/tmp/BackOn/Restore/Cydia/cydia.list" "/etc/apt/sources.list.d"
		chmod 755 "/etc/apt/sources.list.d"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			echo -e "Restoring : metadata.cb0"
			applyNoColor
		fi
		cp "/tmp/BackOn/Restore/Cydia/metadata.cb0" "/var/mobile/Library/Cydia"
		chmod 755 "/var/mobile/Library/Cydia/metadata.cb0"
		PA2CKey
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			apt-get update
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade
			applyNoColor
		else
			apt-get update > /dev/null 2>&1
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade > /dev/null 2>&1
		fi
	fi
	echo -e "${DONE}"
	showLinesA
	showPressAnyKeyToContinue
}

function showBackupedFilesRestore(){
	ClearKey
	showLinesA
	echo -e "${SHOW_INFO_9}"
	showLinesB
	cat "/tmp/BackOn/Restore/Cydia/apt.txt"
	showLinesA
	showPressAnyKeyToContinue
}

function restoreLibrary(){
	while(true); do
		ClearKey
		showLinesA
		echo -e "${SHOW_INFO_10}"
		showLinesB
		if [[ "${showLog}" == YES ]]; then
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
			if [[ "${skipRestore}" == YES ]]; then
				echo -e "Skipped."
				showPressAnyKeyToContinue
			else
				echo -e "${RESTORING}"
				cp -r /tmp/BackOn/Restore/Library/* "/var/mobile/Library"
				chmod -R 755 /var/mobile/Library
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			fi
		elif [[ -z "${ANSWER_I}" ]]; then
			:
		elif [[ -f "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${skipRestore}" == YES ]]; then
				echo -e "Skipped"
				showPressAnyKeyToContinue
			else
				echo -e "${RESTORING}"
				cp "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			fi
		elif [[ -d "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${skipRestore}" == YES ]]; then
				echo -e "Skipped"
				showPressAnyKeyToContinue
			else
				echo -e "${RESTORING}"
				cp -r "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo -e "${DONE}"
				showPressAnyKeyToContinue
			fi
		else
			applyRed
			echo -e "${NO_SUCH_FILE_OR_DIRECTORY}"
			applyNoColor
			showPressAnyKeyToContinue
		fi
	done
}

function rebootDevice(){
	reboot
	quitTool
}

function installUpdate(){
	ClearKey
	local COUNT=0
	while [[ ! "$COUNT" == 3 ]]; do
		showLinesA
		echo -e "${DOWNLOADING}"
		if [[ -d "/tmp/BackOn/Update" ]]; then
			rm -rf "/tmp/BackOn/Update"
		fi
		mkdir "/tmp/BackOn/Update"
		if [[ "${showLog}" == YES ]]; then
			applyPurple
			wget --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "${UpdateURL}"
			applyNoColor
		else
			wget -q --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "${UpdateURL}"
		fi
		PA2CKey
		if [[ -f "/tmp/BackOn/Update/master.zip" ]]; then
			if [[ "${showLog}" == YES ]]; then
				applyPurple
				unzip "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
				applyNoColor
			else
				unzip -qq "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
			fi
			if [[ -d "/tmp/BackOn/Update/master/BackOn-master/" ]]; then
				if [[ -z "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]]; then
					echo -e "ERROR!"
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
	showPressAnyKeyToContinue
}

##############################################
loadSettings
if [[ "${setDefaultLanguage}" == Korean ]]; then
	setKorean
else
	setEnglish
fi
if [[ "${1}" == "-ods" ]]; then
	InitialRunDevSettings=YES
	openDevSettings
fi
checkRoot
if [[ -d /tmp/BackOn ]]; then
	rm -rf /tmp/BackOn
fi
mkdir /tmp/BackOn
while(true); do
	ClearKey
	showLinesA
	echo -e "BackOn ${TOOL_BUILD_TYPE}-${TOOL_BUILD_NUM} - ${LANGUAGE}"
	showLinesB
	echo -e "(1) ${CREATE_BACKUP}"
	echo -e "(2) ${RESTORE_FROM_BACKUP}"
	if [[ "${LANGUAGE}" == English ]]; then
		echo -e "(3) 한국어로 변경 (Change to Korean)"
	elif [[ "${LANGUAGE}" == Korean ]]; then
		echo -e "(3) Change to English."
	fi
	echo -e "(4) ${CHECK_FOR_UPDATES}"
	echo -e "(q) ${QUIT}"
	showLinesB
	echo -e "(${ENTER_TEXT})"
	showLinesA
	applyLightCyan
	read -p "- " ANSWER_A
	applyNoColor

	if [[ "${ANSWER_A}" == 1 ]]; then
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
			showPressAnyKeyToContinue
		fi
		if [[ -d "/tmp/BackOn/Restore" ]]; then
			rm -rf /tmp/BackOn/Restore
		fi
		mkdir /tmp/BackOn/Restore
		unzipBackup
		convertxBackup
		convertOldBackup
		PA2CKey
		if [[ ! -d /tmp/BackOn/Restore/Cydia && ! -d /tmp/BackOn/Restore/Library ]]; then
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
		installUpdate
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