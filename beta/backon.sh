#!/bin/sh
##############################################
# BackOn beta-66
TOOL_BUILD_TYPE=beta
TOOL_BUILD_NUM=66
##############################################

function setEnglish(){
	LANGUAGE="English"
	NOT_RUN_AS_ROOT="You didn't run as root! Please enter 'su' command and login to root."
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
	BACKUP_CANCELED="Backup was canceled due to form was empty."
	FORM_IS_EMPTY="Form is empty."
	NOT_SUPPORTED_FUNCTION="Not supported function."
	NOT_SUCH_FILE_OR_DIRECTORY="No such file or directory"
	NOTHING_TO_BACKUP="Nothing to backup!"
	NOTHING_TO_DELETE="Nothing to delete!"
	PRESS_ANY_KEY_TO_CONTINUE="Press any key to continue..."
	WILL_CREATE_BACKUP_NAME="Will create backup name"
	BACKUP_CYDIA_DATA="Backup Cydia sources and packages list."
	BACKUP_LIBRARY="Backup Library."
	SHOW_BACKUPED_FILES="Show backuped file(s)."
	DISCARD_BACKUP="Discard backup."
	SAVE_BACKUP="Save backup."
	BACKING_UP="Backing up..."
	REMOVING="Removing..."
	ENTER_BACKUP_PATH="Enter backup file path which you saved."
	NOT_BACKON_BACKUP="This is not a BackOn's backup."
	DONE="Done."
	YES="YES"
	NO="NO"
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia packages list"
	BACKUPED_CYDIA_SOURCE="Cydia source"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="Succeed to save backup!"
	RESTORE_CYDIA_DATA="Restore Cydia sources and packages list."
	RESTORE_SHOW_CYDIA_LIST="Show backuped Cydia packages list."
	RESTORE_LIBRARY="Restore Library."
	REBOOT="Reboot."
	RESTORING="Restoring..."
	SHOW_GUIDE_3="Enter file/folder name that you want to backup. If you want to backup all of files, enter 'all' command. Enter 'delete' command to delete backuped backup."
	SHOW_GUIDE_4="Enter file/folder name that you want to delete backup. If you want to delete all of backup files, enter 'all' command."
	SHOW_GUIDE_10="Enter file/folder name that you want to restore. If you want to restore all of files, enter 'all' command."
	SHOW_INFO_1="HOME > Backup Menu"
	SHOW_INFO_2="HOME > Backup Menu > Backup Cydia sources and packages list"
	SHOW_INFO_3="HOME > Backup Menu > Backup Library"
	SHOW_INFO_4="HOME > Backup Menu > Backup Library > Delete backup"
	SHOW_INFO_5="HOME > Backup Menu > Show backuped file(s)"
	SHOW_INFO_6="HOME > Backup Menu > Save backup"
	SHOW_INFO_7="HOME > Restore Menu"
	SHOW_INFO_8="HOME > Restore Menu > Restore Cydia sources and packages list"
	SHOW_INFO_9="HOME > Restore Menu > Show backuped Cydia packages list."
	SHOW_INFO_10="HOME > Restore Menu > Restore Library"
}

function setKorean(){
	LANGUAGE="Korean"
	NOT_RUN_AS_ROOT="root로 로그인되지 않았습니다! 'su' 명령어를 입력해서 root로 로그인해 주세요."
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
	NOT_SUCH_FILE_OR_DIRECTORY="존재하지 않는 파일이나 폴더입니다."
	NOTHING_TO_BACKUP="백업할 파일이 없습니다!"
	NOTHING_TO_DELETE="지울 백업 파일이 없습니다!"
	PRESS_ANY_KEY_TO_CONTINUE="계속하려면 아무 키나 누르십시오..."
	WILL_CREATE_BACKUP_NAME="백업 이름"
	BACKUP_CYDIA_DATA="Cydia 소스, 패키지 목록을 백업"
	BACKUP_LIBRARY="Library 백업"
	SHOW_BACKUPED_FILES="백업한 파일 보기"
	DISCARD_BACKUP="백업을 취소하고 종료"
	SAVE_BACKUP="백업을 저장"
	BACKING_UP="백업 중..."
	REMOVING="삭제 중..."
	ENTER_BACKUP_PATH="백업 파일의 경로를 입력해 주세요."
	NOT_BACKON_BACKUP="이것은 BackOn의 백업 파일이 아닙니다."
	DONE="완료"
	YES="예"
	NO="아니오"
	BACKUPED_CYDIA_PACKAGES_LIST="Cydia 패키지 목록"
	BACKUPED_CYDIA_SOURCE="Cydia 소스"
	BACKUPED_CYDIA_METADATA="Cydia metadata"
	BACKUPED_LIBRARY="Library"
	SUCCEED_SAVE_BACKUP="백업에 성공했습니다!"
	RESTORE_CYDIA_DATA="Cydia 소스, 패키지 복원"
	RESTORE_SHOW_CYDIA_LIST="백업한 Cydia 패키지 목록 보기"
	RESTORE_LIBRARY="Library 복원"
	REBOOT="재부팅"
	RESTORING="복원 중..."
	SHOW_GUIDE_3="백업을 원하는 폴더/파일의 이름을 입력하시면 백업됩니다. 'all'을 입력하면 모두 백업할 수 있습니다. 'delete' 명령어로 백업한 백업 파일을 삭제할 수 있습니다."
	SHOW_GUIDE_4="삭제를 원하는 폴더/파일의 이름을 입력하시면 됩니다. 'all'을 입력하면 모두 지울 수 있습니다."
	SHOW_GUIDE_10="복원을 원하는 폴더/파일의 이름을 입력하시면 복원됩니다. 'all'을 입력하면 모두 복원할 수 있습니다."
	SHOW_INFO_1="홈 > 백업 메뉴"
	SHOW_INFO_2="홈 > 백업 메뉴 > Cydia 소스, 패키지 목록을 백업"
	SHOW_INFO_3="홈 > 백업 메뉴 > Library 백업"
	SHOW_INFO_4="홈 > 백업 메뉴 > Library 백업 > 백업 삭제"
	SHOW_INFO_5="홈 > 백업 메뉴 > 백업한 파일 표시"
	SHOW_INFO_6="홈 > 백업 메뉴 > 백업을 저장"
	SHOW_INFO_7="홈 > 복원 메뉴"
	SHOW_INFO_8="홈 > 복원 메뉴 > Cydia 소스, 패키지 복원"
	SHOW_INFO_9="홈 > 복원 메뉴 > 백업한 Cydia 패키지 목록 보기"
	SHOW_INFO_10="홈 > 복원 메뉴 > Library 복원"
}

function openDevSettings(){
	while(true); do
		ClearKey
		showLinesA
		echo "DevSettings"
		showLinesB
		if [[ "${EnableExitKey}" == YES ]]; then
			echo "(1) EnableExitKey : YES"
		elif [[ "${EnableExitKey}" == NO ]]; then
			echo "(1) EnableExitKey : NO"
		fi
		if [[ "${ShowLog}" == YES ]]; then
			echo "(2) ShowLog : YES"
		elif [[ "${ShowLog}" == NO ]]; then
			echo "(2) ShowLog : NO"
		fi
		if [[ "${ShowPA2C}" == YES ]]; then
			echo "(3) ShowPA2C : YES"
		elif [[ "${ShowPA2C}" == NO ]]; then
			echo "(3) ShowPA2C : NO"
		fi
		if [[ "${SkipRestore}" == YES ]]; then
			echo "(4) SkipRestore : YES"
		elif [[ "${SkipRestore}" == NO ]]; then
			echo "(4) SkipRestore : NO"
		fi
		if [[ "${SkipCheckInstalledPackage}" == YES ]]; then
			echo "(5) SkipCheckInstalledPackage : YES"
		elif [[ "${SkipCheckInstalledPackage}" == NO ]]; then
			echo "(5) SkipCheckInstalledPackage : NO"
		fi
		if [[ "${SkipCheckOSVer}" == YES ]]; then
			echo "(5) SkipCheckOSVer : YES"
		elif [[ "${SkipCheckOSVer}" == NO ]]; then
			echo "(5) SkipCheckOSVer : NO"
		fi
		echo "(6) OSVer : ${OSVer}"
		if [[ "${MakeFakeActivatorFile}" == YES ]]; then
			echo "(7) MakeFakeActivatorFile : YES"
		elif [[ "${MakeFakeActivatorFile}" == NO ]]; then
			echo "(7) MakeFakeActivatorFile : NO"
		fi
		echo "(8) UpdateBuildType : ${UpdateBuildType}"
		if [[ "${ForceInstallUpdate}" == YES ]]; then
			echo "(9) ForceInstallUpdate : YES"
		elif [[ "${ForceInstallUpdate}" == NO ]]; then
			echo "(9) ForceInstallUpdate : NO"
		fi
		echo "(10) BackupPath : ${BackupPath}"
		if [[ "${ClearKey}" == YES ]]; then
			echo "(11) ClearKey : YES"
		elif [[ "${ClearKey}" == NO ]]; then
			echo "(11) ClearKey : NO"
		fi
		echo "(12) switchLanguage (Current : ${LANGUAGE})"
		echo "(13) setDefaultLanguage : ${setDefaultLanguage}"
		if [[ "${skipCheckRoot}" == YES ]]; then
			echo "(14) skipCheckRoot : YES"
		elif [[ "${skipCheckRoot}" == NO ]]; then
			echo "(14) skipCheckRoot : NO"
		fi
		if [[ "${runUpdateODS}" == YES ]]; then
			echo "(15) runUpdateODS : YES"
		elif [[ "${runUpdateODS}" == NO ]]; then
			echo "(15) runUpdateODS : NO"
		fi
		echo "(16) Check update now."
		echo "(17) cp /backon.sh /usr/bin/backon"
		echo "(l) ls"
		echo "(s) Save Settings."
		echo "(d) Disable DevSettings."
		showLinesA
		read -p "- " ANSWER_D

		if [[ "${ANSWER_D}" == 1 ]]; then
			if [[ "${EnableExitKey}" == YES ]]; then
				EnableExitKey=NO
			elif [[ "${EnableExitKey}" == NO ]]; then
				EnableExitKey=YES
			fi
		elif [[ "${ANSWER_D}" == 2 ]]; then
			if [[ "${ShowLog}" == YES ]]; then
				ShowLog=NO
			elif [[ "${ShowLog}" == NO ]]; then
				ShowLog=YES
			fi
		elif [[ "${ANSWER_D}" == 3 ]]; then
			if [[ "${ShowPA2C}" == YES ]]; then
				ShowPA2C=NO
			elif [[ "${ShowPA2C}" == NO ]]; then
				ShowPA2C=YES
			fi
		elif [[ "${ANSWER_D}" == 4 ]]; then
			if [[ "${SkipRestore}" == YES ]]; then
				SkipRestore=NO
			elif [[ "${SkipRestore}" == NO ]]; then
				SkipRestore=YES
			fi
		elif [[ "${ANSWER_D}" == 5 ]]; then
			if [[ "${SkipCheckInstalledPackage}" == YES ]]; then
				SkipCheckInstalledPackage=NO
			elif [[ "${SkipCheckInstalledPackage}" == NO ]]; then
				SkipCheckInstalledPackage=YES
			fi
		elif [[ "${ANSWER_D}" == 6 ]]; then
			read -p "Query : " OSVer
			if [[ -z "${OSVer}" ]]; then
				OSVer="$(sw_vers -productVersion)"
			fi
		elif [[ "${ANSWER_D}" == 7 ]]; then
			if [[ "${MakeFakeActivatorFile}" == YES ]]; then
				rm /var/mobile/Library/Caches/libactivator.plist
				MakeFakeActivatorFile=NO
			elif [[ "${SkipCheckInstalledPackage}" == NO ]]; then
				touch /var/mobile/Library/Caches/libactivator.plist
				MakeFakeActivatorFile=YES
			fi
		elif [[ "${ANSWER_D}" == 8 ]]; then
			while(true); do
				ClearKey
				showLinesA
				echo "(1) alpha"
				echo "(2) beta"
				echo "(3) stable"
				showLinesA
				read -p "- " ANSWER_E

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
			read -p "Query : " BackupPath
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
				echo "(1) English"
				echo "(2) Korean (한국어)"
				showLinesA
				read -p "- " ANSWER_G

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
			cp /backon.sh /usr/bin/backon
			quitTool
		elif [[ "${ANSWER_D}" == l || "${ANSWER_D}" == ls ]]; then
			ClearKey
			showLinesA
			echo "/tmp/BackOn/"
			ls -l "/tmp/BackOn"
			echo -e "\n/tmp/BackOn/Cydia"
			ls -l "/tmp/BackOn/Cydia"
			echo -e "\n/tmp/BackOn/Library"
			ls -l "/tmp/BackOn/Library"
			echo -e "\n/tmp/BackOn/${BACKUP_NAME}"
			ls -l "/tmp/BackOn/${BACKUP_NAME}"
			echo -e "\n/tmp/BackOn/${BACKUP_NAME}/Cydia"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Cydia"
			echo -e "\n/tmp/BackOn/${BACKUP_NAME}/Library"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Library"
			echo -e "\n/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
			ls -l "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
			echo -e "\n/tmp/BackOn/Restore"
			ls -l "/tmp/BackOn/Restore"
			echo -e "\n/tmp/BackOn/Restore/Cydia"
			ls -l "/tmp/BackOn/Restore/Cydia"
			echo -e "\n/tmp/BackOn/Restore/Library"
			ls -l "/tmp/BackOn/Restore/Library"
			echo -e "\n/tmp/BackOn/Restore/info"
			ls -l "/tmp/BackOn/Restore/info"
			showLinesA
			showPressAnyKeyToContinue
		elif [[ "${ANSWER_D}" == save ||  "${ANSWER_D}" == s ]]; then
			saveSettings
			echo "Session was done."
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
	echo "${EnableExitKey}" >> /var/mobile/Library/Preferences/BackOn/EnableExitKey
	echo "${ShowLog}" >> /var/mobile/Library/Preferences/BackOn/ShowLog
	echo "${ShowPA2C}" >> /var/mobile/Library/Preferences/BackOn/ShowPA2C
	echo "${SkipRestore}" >> /var/mobile/Library/Preferences/BackOn/SkipRestore
	echo "${SkipCheckInstalledPackage}" >> /var/mobile/Library/Preferences/BackOn/SkipCheckInstalledPackage
	echo "${OSVer}" >> /var/mobile/Library/Preferences/BackOn/OSVer
	echo "${UpdateBuildType}" >> /var/mobile/Library/Preferences/BackOn/UpdateBuildType
	echo "${ForceInstallUpdate}" >> /var/mobile/Library/Preferences/BackOn/ForceInstallUpdate
	echo "${BackupPath}" >> /var/mobile/Library/Preferences/BackOn/BackupPath
	echo "${ClearKey}" >> /var/mobile/Library/Preferences/BackOn/ClearKey
	echo "${setDefaultLanguage}" >> /var/mobile/Library/Preferences/BackOn/setDefaultLanguage
	echo "${skipCheckRoot}" >> /var/mobile/Library/Preferences/BackOn/skipCheckRoot
	echo "${runUpdateODS}" >> /var/mobile/Library/Preferences/BackOn/runUpdateODS
}


function loadSettings(){
	if [[ -f "/var/mobile/Library/Preferences/BackOn/EnableExitKey" ]]; then
		EnableExitKey="$(cat "/var/mobile/Library/Preferences/BackOn/EnableExitKey")"
	else
		EnableExitKey=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/ShowLog" ]]; then
		ShowLog="$(cat "/var/mobile/Library/Preferences/BackOn/ShowLog")"
	else
		ShowLog=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/ShowPA2C" ]]; then
		ShowPA2C="$(cat "/var/mobile/Library/Preferences/BackOn/ShowPA2C")"
	else
		ShowPA2C=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/SkipRestore" ]]; then
		SkipRestore="$(cat "/var/mobile/Library/Preferences/BackOn/SkipRestore")"
	else
		SkipRestore=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/SkipCheckInstalledPackage" ]]; then
		SkipCheckInstalledPackage="$(cat "/var/mobile/Library/Preferences/BackOn/SkipCheckInstalledPackage")"
	else
		SkipCheckInstalledPackage=NO
	fi
	if [[ -f "/var/mobile/Library/Preferences/BackOn/OSVer" ]]; then
		OSVer="$(cat "/var/mobile/Library/Preferences/BackOn/OSVer")"
	else
		OSVer="$(sw_vers -productVersion)"
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
}

function showLinesA(){
	PRINTED_COUNTS=0
	COLS=`tput cols`
	while [[ ! ${PRINTED_COUNTS} == $COLS ]]; do
   		echo -n "*"
 		PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
	done
	echo
}

function showLinesB(){
	PRINTED_COUNTS=0
	COLS=`tput cols`
	while [[ ! ${PRINTED_COUNTS} == $COLS ]]; do
   		echo -n "-"
 		PRINTED_COUNTS=$((${PRINTED_COUNTS}+1))
	done
	echo
}

function showPressAnyKeyToContinue(){
	read -s -n 1 -p "${PRESS_ANY_KEY_TO_CONTINUE}"
}

function showNotSupportedFunction(){
	echo "${NOT_SUPPORTED_FUNCTION}"
	showPressAnyKeyToContinue
}

function ExitKey(){
	if [[ "${EnableExitKey}" == YES ]]; then
		quitTool
	else
		showNotSupportedFunction
	fi
}

function PA2CKey(){
	if [[ "${ShowPA2C}" == YES ]]; then
		showPressAnyKeyToContinue
		echo
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
			echo "${NOT_RUN_AS_ROOT}"
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

function quitTool(){
	ClearKey
	if [[ -d /tmp/BackOn ]]; then
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_NoClear(){
	if [[ -d /tmp/BackOn ]]; then
		rm -rf /tmp/BackOn
	fi
	exit 0
}

function quitTool_NoClear_Error(){
	if [[ -d /tmp/BackOn ]]; then
		rm -rf /tmp/BackOn
	fi
	exit 1
}

function quitTool_Error(){
	ClearKey
	if [[ -d /tmp/BackOn ]]; then
		rm -rf /tmp/BackOn
	fi
	exit 1
}

##############################################

function defineBackupName(){
	while(true); do
		ClearKey
		showLinesA
		echo "${ENTER_BACKUP_NAME}"
		echo "(${ENTER_QUIT})"
		showLinesA
		read -p "- " ANSWER_B
		if [[ -z "${ANSWER_B}" ]]; then
			echo "${FORM_IS_EMPTY}"
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
				echo "ERROR"
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
		echo "${SHOW_INFO_1}"
		showLinesB
		echo "(1) ${BACKUP_CYDIA_DATA}"
		echo "(2) ${BACKUP_LIBRARY}"
		echo "(3) ${SHOW_BACKUPED_FILES}"
		echo "(q) ${DISCARD_BACKUP}"
		echo "(s) ${SAVE_BACKUP}"
		showLinesA
		read -p "- " ANSWER_C

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
	echo "${SHOW_INFO_2}"
	showLinesB
	echo "${BACKING_UP}"
	if [[ -d "/tmp/BackOn/${BACKUP_NAME}/Cydia" ]]; then
		rm -rf "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	fi
	mkdir "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	dpkg --get-selections > "/tmp/BackOn/${BACKUP_NAME}/Cydia/apt.txt"
	cp /etc/apt/sources.list.d/cydia.list "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	cp /var/lib/cydia/metadata.plist "/tmp/BackOn/${BACKUP_NAME}/Cydia"
	echo "${DONE}"
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
		echo "${SHOW_INFO_3}"
		showLinesB
		if [[ "${ShowLog}" == YES ]]; then
			ls -l /var/mobile/Library
		else
			ls /var/mobile/Library
		fi
		showLinesB
		echo "(${ENTER_QUIT})"
		echo "(${SHOW_GUIDE_3})"
		showLinesA
		read -p "- " ANSWER_E

		if [[ -z "${ANSWER_E}" ]]; then
			:
		else
			if [[ "${ANSWER_E}" == all ]]; then
				echo "${BACKING_UP}"
				if [[ "${ShowLog}" == YES ]]; then
					rsync -av --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/${BACKUP_NAME}/Library"
				else
					rsync -q -av --exclude="Caches" --exclude="Filza" --exclude="Preferences/BackupAZ" /var/mobile/Library/* "/tmp/BackOn/${BACKUP_NAME}/Library"
				fi
				if [[ -f "/var/mobile/Library/Caches/libactivator.plist" ]]; then
					if [[ ! -d "/tmp/BackOn/${BACKUP_NAME}/Library/Caches" ]]; then
						mkdir "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
					fi
					cp /var/mobile/Library/Caches/libactivator.plist "/tmp/BackOn/${BACKUP_NAME}/Library/Caches"
					if [[ "${ShowLog}" == YES ]]; then
						echo "Backuped libactivator.plist."
					fi
				fi
				echo "${DONE}"
				showPressAnyKeyToContinue
			elif [[ "${ANSWER_E}" == delete ]]; then
				while(true); do
					if [[ -z "$(ls "/tmp/BackOn/${BACKUP_NAME}/Library")" ]]; then
						ClearKey
						showLinesA
						echo "${SHOW_INFO_4}"
						showLinesB
						echo "${NOTHING_TO_DELETE}"
						showLinesA
						showPressAnyKeyToContinue
						break
					fi
					ClearKey
					showLinesA
					echo "${SHOW_INFO_4}"
					showLinesB
					if [[ "${ShowLog}" == YES ]]; then
						ls -l "/tmp/BackOn/${BACKUP_NAME}/Library"
					else
						ls "/tmp/BackOn/${BACKUP_NAME}/Library"
					fi
					showLinesB
					echo "(${ENTER_QUIT})"
					echo "(${SHOW_GUIDE_4})"
					showLinesA
					read -p "- " ANSWER_J

					if [[ -z "${ANSWER_J}" ]]; then
						:
					else
						if [[ "${ANSWER_J}" == all ]]; then
							echo "${REMOVING}"
							rm -rf "/tmp/BackOn/${BACKUP_NAME}/Library"
							mkdir "/tmp/BackOn/${BACKUP_NAME}/Library"
							echo "${DONE}"
							showPressAnyKeyToContinue
						elif [[ "${ANSWER_J}" == q || "${ANSWER_J}" == quit ]]; then
							break
						elif  [[ "${ANSWER_J}" == ods ]]; then
							openDevSettings
						elif [[ "${ANSWER_J}" == exit ]]; then
							ExitKey
						elif [[ -f "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo "${REMOVING}"
							rm "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo "${DONE}"
							showPressAnyKeyToContinue
						elif [[ -d "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}" ]]; then
							echo "${REMOVING}"
							rm -rf "/tmp/BackOn/${BACKUP_NAME}/Library/${ANSWER_J}"
							echo "${DONE}"
							showPressAnyKeyToContinue
						else
							echo "${NOT_SUCH_FILE_OR_DIRECTORY}"
							PRESS_ANY_KEY_TO_CONTINUE
						fi
					fi
				done
			elif [[ "${ANSWER_E}" == Preferences ]]; then
				if [[ "${ShowLog}" == YES ]]; then
					echo "Special backup."
				fi
				echo "${BACKING_UP}"
				if [[ ! -d "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences" ]]; then
					mkdir "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
				fi
				if [[ "${ShowLog}" == YES ]]; then
					rsync -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
				else
					rsync -q -av --exclude="BackupAZ" /var/mobile/Library/Preferences/* "/tmp/BackOn/${BACKUP_NAME}/Library/Preferences"
				fi
				echo "${DONE}"
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
				echo "${BACKING_UP}"
				cp "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/${BACKUP_NAME}/Library"
				echo "${DONE}"
				showPressAnyKeyToContinue
			elif [[ -d "/var/mobile/Library/${ANSWER_E}" ]]; then
				echo "${BACKING_UP}"
				cp -r "/var/mobile/Library/${ANSWER_E}" "/tmp/BackOn/${BACKUP_NAME}/Library"
				echo "${DONE}"
				showPressAnyKeyToContinue
			else
				echo "${NOT_SUCH_FILE_OR_DIRECTORY} : ${ANSWER_E}"
				showPressAnyKeyToContinue
			fi
		fi
	done
}

function showBackupedFilesBackup(){
	ClearKey
	showLinesA
	echo "${SHOW_INFO_5}"
	showLinesB
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/apt.txt" ]]; then
		echo "${BACKUPED_CYDIA_PACKAGES_LIST} : ${YES}"
	else
		echo "${BACKUPED_CYDIA_PACKAGES_LIST} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/cydia.list" ]]; then
		echo "${BACKUPED_CYDIA_SOURCE} : ${YES}"
	else
		echo "${BACKUPED_CYDIA_SOURCE} : ${NO}"
	fi
	if [[ -f "/tmp/BackOn/${BACKUP_NAME}/Cydia/metadata.plist" ]]; then
		echo "${BACKUPED_CYDIA_METADATA} : ${YES}"
	else
		echo "${BACKUPED_CYDIA_METADATA} : ${NO}"
	fi
	if [[ -d "/tmp/BackOn/${BACKUP_NAME}/Library" ]]; then
		echo "${BACKUPED_LIBRARY} : ${YES}"
		showLinesB
		if [[ "${ShowLog}" == YES ]]; then
			ls -l "/tmp/BackOn/$BACKUP_NAME/Library"
		else
			ls "/tmp/BackOn/$BACKUP_NAME/Library"
		fi
		if [[ "${ShowLog}" == YES ]]; then
			if [[ -d "/tmp/BackOn/$BACKUP_NAME/Library/Caches" ]]; then
				showLinesB
				ls -l "/tmp/BackOn/$BACKUP_NAME/Library/Caches"
			fi
		fi
	else
		echo "${BACKUP_LIBRARY} : ${NO}"
	fi
	showLinesA
	showPressAnyKeyToContinue
}

function saveBackup(){
	ClearKey
	showLinesA
	echo "${SHOW_INFO_6}"
	showLinesB
	if [[ -z "$(ls /tmp/BackOn/${BACKUP_NAME})" ]]; then
		echo "${NOTHING_TO_BACKUP}"
		showLinesA
		showPressAnyKeyToContinue
	else
		cd /tmp/BackOn/$BACKUP_NAME
		mkdir info
		echo "${TOOL_BUILD_NUM}" >> info/ToolBuildNum
		echo "${TOOL_BUILD_TYPE}" >> info/ToolBuildType
		echo "${OSVer}" >> info/OSVersion
		if [[ "${ShowLog}" == YES ]]; then
			echo "${BACKING_UP}"
			zip -r "${BackupPath}/${ANSWER_B}.zip" *
		else
			echo "${BACKING_UP}"
			zip -q -r "${BackupPath}/${ANSWER_B}.zip" *
		fi
		if [[ ! -f "${BackupPath}/${ANSWER_B}.zip" ]]; then
			echo "ERROR!"
			quitTool_NoClear_Error
		fi
		echo "${SUCCEED_SAVE_BACKUP} (${BackupPath}/${ANSWER_B}.zip)"
		showLinesA
		quitTool_NoClear
	fi
}

function defineBackupPath(){
	while(true); do
		ClearKey
		showLinesA
		echo "${ENTER_BACKUP_PATH}"
		echo "(${ENTER_QUIT})"
		showLinesA
		read -p "- " ANSWER_F

		if [[ "${ANSWER_F}" == ods ]]; then
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
				echo "${NOT_SUCH_FILE_OR_DIRECTORY}"
				showPressAnyKeyToContinue
			fi
		fi
	done
}

function unzipBackup(){
	if [[ "${ShowLog}" == YES ]]; then
		unzip "${ToRestoreBackupPath}" -d /tmp/BackOn/Restore
	else
		unzip -qq "${ToRestoreBackupPath}" -d /tmp/BackOn/Restore
	fi
}

function convertOldBackup(){
	for File in "apt.txt" "cydia.list" "metadata.plist"; do
		if [[ -f "/tmp/BackOn/Restore/${File}" ]]; then
			if [[ "${ShowLog}" == YES ]]; then
				echo "Converting ${File}..."
			fi
			if [[ ! -d "/tmp/BackOn/Restore/Cydia" ]]; then
				mkdir /tmp/BackOn/Restore/Cydia
			fi
			mv "/tmp/BackOn/Restore/${File}" "/tmp/BackOn/Restore/Cydia/${File}"
		fi
	done
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
		echo "${SHOW_INFO_7}"
		showLinesB
		if [[ "${RestoreCydiaIsAvailable}" == YES ]]; then
			echo "(1) ${RESTORE_CYDIA_DATA}"
			echo "(2) ${RESTORE_SHOW_CYDIA_LIST}"
		fi
		if [[ "${RestoreLibraryIsAvailable}" == YES ]]; then
			echo "(3) ${RESTORE_LIBRARY}"
		fi
		echo "(4) ${REBOOT}"
		echo "(q) ${QUIT}"
		showLinesA
		read -p "- " ANSWER_H

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
	echo "${SHOW_INFO_8}"
	showLinesB
	if [[ "${SkipRestore}" == YES ]]; then
		echo "Skipped."
	else
		echo "${RESTORING}"
		if [[ "${ShowLog}" == YES ]]; then
			echo "Restoring : sources.list.d"
		fi
		cp "/tmp/BackOn/Restore/Cydia/cydia.list" "/etc/apt/sources.list.d"
		if [[ "${ShowLog}" == YES ]]; then
			echo "Restoring : metadata.plist"
		fi
		cp "/tmp/BackOn/Restore/Cydia/metadata.plist" "/var/lib/cydia"
		PA2CKey
		if [[ "${ShowLog}" == YES ]]; then
			apt-get update
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade
		else
			apt-get update > /dev/null 2>&1
			dpkg --set-selections < "/tmp/BackOn/Restore/Cydia/apt.txt"
			apt-get -y --force-yes -u dselect-upgrade > /dev/null 2>&1
		fi
	fi
	echo "${DONE}"
	showLinesA
	showPressAnyKeyToContinue
}

function showBackupedFilesRestore(){
	ClearKey
	showLinesA
	echo "${SHOW_INFO_9}"
	showLinesB
	cat "/tmp/BackOn/Restore/Cydia/apt.txt"
	showLinesA
	showPressAnyKeyToContinue
}

function restoreLibrary(){
	while(true); do
		ClearKey
		showLinesA
		echo "${SHOW_INFO_10}"
		showLinesB
		if [[ "${ShowLog}" == YES ]]; then
			ls -l "/tmp/BackOn/Restore/Library"
		else
			ls "/tmp/BackOn/Restore/Library"
		fi
		showLinesB
		echo "(${SHOW_GUIDE_10})"
		echo "(${ENTER_QUIT})"
		showLinesA
		read -p "- " ANSWER_I

		if [[ "${ANSWER_I}" == ods ]]; then
			openDevSettings
		elif [[ "${ANSWER_I}" == q || "${ANSWER_I}" == quit ]]; then
			break
		elif [[ "${ANSWER_I}" == exit ]]; then
			ExitKey
		elif [[ "${ANSWER_I}" == all ]]; then
			if [[ "${SkipRestore}" == YES ]]; then
				echo "Skipped."
				showPressAnyKeyToContinue
			else
				echo "${RESTORING}"
				cp -r /tmp/BackOn/Restore/Library/* "/var/mobile/Library"
				chmod -R 755 /var/mobile/Library
				echo "${DONE}"
				showPressAnyKeyToContinue
			fi
		elif [[ -z "${ANSWER_I}" ]]; then
			:
		elif [[ -f "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${SkipRestore}" == YES ]]; then
				echo "Skipped"
				showPressAnyKeyToContinue
			else
				echo "${RESTORING}"
				cp "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo "${DONE}"
				showPressAnyKeyToContinue
			fi
		elif [[ -d "/tmp/BackOn/Restore/Library/${ANSWER_I}" ]]; then
			if [[ "${SkipRestore}" == YES ]]; then
				echo "Skipped"
				showPressAnyKeyToContinue
			else
				echo "${RESTORING}"
				cp -r "/tmp/BackOn/Restore/Library/${ANSWER_I}" "/var/mobile/Library"
				chmod -R 755 "/var/mobile/Library/${ANSWER_I}"
				echo "${DONE}"
				showPressAnyKeyToContinue
			fi
		else
			echo "${NOT_SUCH_FILE_OR_DIRECTORY}"
			showPressAnyKeyToContinue
		fi
	done
}

function rebootDevice(){
	rm -rf /var/mobile/Library/Caches
	reboot
	quitTool
}

function installUpdate(){
	ClearKey
	local COUNT=0
	while [[ ! "$COUNT" == 3 ]]; do
		showLinesA
		echo "${DOWNLOADING}"
		if [[ -d "/tmp/BackOn/Update" ]]; then
			rm -rf "/tmp/BackOn/Update"
		fi
		mkdir "/tmp/BackOn/Update"
		if [[ "${ShowLog}" == YES ]]; then
			wget --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "https://github.com/pookjw/BackOn/archive/master.zip"
		else
			wget -q --no-check-certificate --output-document=/tmp/BackOn/Update/master.zip "https://github.com/pookjw/BackOn/archive/master.zip"
		fi
		PA2CKey
		if [[ -f "/tmp/BackOn/Update/master.zip" ]]; then
			if [[ "${ShowLog}" == YES ]]; then
				unzip "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
			else
				unzip -qq "/tmp/BackOn/Update/master.zip" -d "/tmp/BackOn/Update/master"
			fi
			if [[ -d "/tmp/BackOn/Update/master/BackOn-master/" ]]; then
				if [[ -z "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]]; then
					echo "ERROR!"
					break
				fi
				if [ ${TOOL_BUILD_NUM} -ge "$(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build")" ]; then
					if [[ ! "${ForceInstallUpdate}" == YES ]]; then
						echo "${UP_TO_DATE}"
						break
					fi
				fi
				if [[ "${ShowLog} == YES" ]]; then
					echo "Downloaded : $(cat "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/build") / Current : ${TOOL_BUILD_NUM}"
					PA2CKey
				fi
				echo "${INSTALLING}"
				chmod +x "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}/update-script"
				cd "/tmp/BackOn/Update/master/BackOn-master/${UpdateBuildType}"
				./update-script
				quitTool_NoClear
			else
				echo "ERROR!"
				break
			fi
		else
			echo "ERROR!"
			break
		fi
	done
	showLinesA
	showPressAnyKeyToContinue
}

##############################################
if [[ -d /tmp/BackOn ]]; then
	rm -rf /tmp/BackOn
fi
mkdir /tmp/BackOn
loadSettings
if [[ "${setDefaultLanguage}" == Korean ]]; then
	setKorean
else
	setEnglish
fi
if [[ "${1}" == "-ods" ]]; then
	openDevSettings
fi
checkRoot
while(true); do
	ClearKey
	showLinesA
	echo "BackOn ${TOOL_BUILD_TYPE}-${TOOL_BUILD_NUM} - ${LANGUAGE}"
	echo "(1) ${CREATE_BACKUP}"
	echo "(2) ${RESTORE_FROM_BACKUP}"
	if [[ "${LANGUAGE}" == English ]]; then
		echo "(3) 한국어로 변경 (Change to Korean)"
	elif [[ "${LANGUAGE}" == Korean ]]; then
		echo "(3) Change to English."
	fi
	echo "(4) ${CHECK_FOR_UPDATES}"
	echo "(q) ${QUIT}"
	showLinesB
	echo "(${ENTER_TEXT})"
	showLinesA
	read -p "- " ANSWER_A

	if [[ "${ANSWER_A}" == 1 ]]; then
		defineBackupName
		if [[ "${ShowLog}" == YES ]]; then
			echo "${WILL_CREATE_BACKUP_NAME} : ${BACKUP_NAME}"
			PA2CKey
		fi
		showInitialBackupMenu
	elif [[ "${ANSWER_A}" == 2 ]]; then
		defineBackupPath
		if [[ "${ShowLog}" == YES ]]; then
			echo "Recognized backup file path : ${ToRestoreBackupPath}"
			showPressAnyKeyToContinue
		fi
		if [[ -d "/tmp/BackOn/Restore" ]]; then
			rm -rf /tmp/BackOn/Restore
		fi
		mkdir /tmp/BackOn/Restore
		unzipBackup
		convertOldBackup
		PA2CKey
		if [[ ! -d /tmp/BackOn/Restore/Cydia && ! -d /tmp/BackOn/Restore/Library ]]; then
			echo "${NOT_BACKON_BACKUP}"
			quitTool_Error
		fi
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