#!/bin/sh

#########################
# BackOn - v0.46 2015.02.16
# 제 개인 블로그 (Tistory)에서 배포되던 초기 빌드입니다. 현재 업데이트는 중단되었으며 버그가 있습니다.
# Not for commercial. Copyright all rights reserved.
#########################

quiet=$1
version=0.46
count1=0
count2=0
count3=0
count4=0
count5=0
sc1=0
sc2=0
namecount=2
reboot_count=3

# backon.sh이 실행된 OS가 iPhone OS인지 확인
if [ -f /usr/bin/sw_vers ]; then
	if [[ ! "$(sw_vers -productName)" == "iPhone OS" ]]; then
		echo -e "\033[1;31mERROR: 실행된 OS는 iOS가 아닙니다.\033[m"
		exit 1
	fi
fi

# root 로그인이 됐는지 체크
if [ -f /usr/bin/id ]; then
	if [ "$(id -u)" != "0" ]; then
		echo -e "\033[1;31mERROR: root로 실행되지 않았습니다. su를 입력하여 root로 로그인하여 주세요.\033[m"
		error=1
	fi
else
	echo -e "\033[1;31mERROR: Core Utilities가 설치되지 않았습니다. Cydia에서 설치해 주세요.\033[m"
	error=1
fi

# killall 사용을 위해 shell-cmds가 설치됐는지 체크 (아래 MobileCydia를 killall 처리를 위해)
if [ ! -f /usr/bin/killall ]; then
	echo -e "\033[1;31mERROR: shell-cmds가 설치되지 않았습니다. Cydia에서 설치해 주세요.\033[m"
	error=1
fi

# apt-get 설치됐는지 체크
if [ ! -f /usr/bin/apt-get ]; then
	echo -e "\033[1;31mERROR: APT 0.7 Strict이 설치되지 않았습니다. Cydia에서 설치해 주세요.\033[m"
	error=1
fi

# error가 있으면 exit 처리
if [[ $error == 1 ]]; then
	exit 1
fi

# MobileCydia 종료
if [ -f /bin/ps ]; then
	ps cax | grep MobileCydia > /dev/null
	if [ $? -eq 0 ]; then
		killall -9 MobileCydia
	fi
else
	killall -9 MobileCydia
	while(true);
	do
		if [ ! -f /bin/ps ]; then
			if [ $count1 -ge 1 ]; then echo -e "\033[1;31madv-cmds 설치에 실패됐습니다. (재시도: $count1/3)\033[m"; fi
			apt-get -y --force-yes install adv-cmds
			count1=$(($count1+1))
			if [[ $count1 == 3 ]]; then echo -e "\033[1;31madv-cmds 설치에 실패했습니다. 출력된 에러 메시지를 확인해 주세요. (재시도: 3/3)\033[m"; exit 1; fi
		else
			break
		fi
	done
fi

# Core Utilities가 설치됐는지 체크하고 설치 안 됐으면 apt-get install 처리
while(true);
do
	if [ ! -f /bin/rm ]; then
		if [ $count2 -ge 1 ]; then echo -e "\033[1;31mcoreutils-bin 설치에 실패됐습니다. (재시도: $count2/3)\033[m"; fi
		apt-get -y --force-yes install coreutils-bin
		count2=$(($count2+1))
		if [[ $count2 == 3 ]]; then echo -e "\033[1;31mcoreutils-bin 설치에 실패했습니다. 출력된 에러 메시지를 확인해 주세요. (재시도: 3/3)\033[m"; exit 1; fi
	else
		break
	fi
done

# unzip이 설치됐는지 체크하고 설치 안 됐으면 apt-get install 처리
while(true);
do
	if [ ! -f /usr/bin/unzip ]; then
		if [ $count3 -ge 1 ]; then echo -e "\033[1;31munzip 설치에 실패됐습니다. (재시도: $count3/3)\033[m"; fi
		apt-get -y --force-yes install unzip
		count3=$(($count3+1))
		if [[ $count3 == 3 ]]; then echo -e "\033[1;31munzip 설치에 실패했습니다. 출력된 에러 메시지를 확인해 주세요. (재시도: 3/3)\033[m"; exit 1; fi
	else
		break
	fi
done

# zip이 설치됐는지 체크하고 설치 안 됐으면 apt-get install 처리
while(true);
do
	if [ ! -f /usr/bin/zip ]; then
		if [ $count4 -ge 1 ]; then echo -e "\033[1;31mzip 설치에 실패됐습니다. (재시도: $count4/3)\033[m"; fi
		apt-get -y --force-yes install zip
		count4=$(($count4+1))
		if [[ $count4 == 3 ]]; then echo -e "\033[1;31mzip 설치에 실패했습니다. 출력된 에러 메시지를 확인해 주세요. (재시도: 3/3)\033[m"; exit 1; fi
	else
		break
	fi
done

# rsync가 설치됐는지 체크하고 설치 안 됐으면 apt-get install 처리
while(true);
do
	if [ ! -f /usr/bin/rsync ]; then
		if [ $count5 -ge 1 ]; then echo -e "\033[1;31mrsync 설치에 실패됐습니다. (재시도: $count5/3)\033[m"; fi
		apt-get -y --force-yes install rsync
		count5=$(($count5+1))
		if [[ $count5 == 3 ]]; then echo -e "\033[1;31mrsync 설치에 실패했습니다. 출력된 에러 메시지를 확인해 주세요. (재시도: 3/3)\033[m"; exit 1; fi
	else
		break
	fi
done

# /tmp/BackOn이 존재할 경우 제거
if [ -d /tmp/BackOn ]; then
	rm -rf /tmp/BackOn/*
else
	mkdir /tmp/BackOn
fi

# quiet 모드가 활성화됐을 경우 문구 출력
if [[ "$quiet" == quiet ]]; then
	echo "quiet 모드가 활성화됐습니다."
fi

#####################################################
PRINTED_COUNTS=0
COLS=`tput cols`
echo
while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   	printf =
 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
done
#####################################################
echo -e "\nBackOn v$version."
echo "(1) 백업 생성"
echo "(2) 백업에서 복원"
echo "(q) 종료"
#####################################################
PRINTED_COUNTS=0
COLS=`tput cols`
while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   	printf =
 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
done
#####################################################
echo -e "\n진행할 작업을 입력해 주세요."
while(true);
do
	read -p "- " option
	if [[ $option == 1 || $option == 2 || $option == q ]]; then
		break
	else
		echo -e "\033[1;31mERROR: 1 또는 2 또는 q로만 답해주세요.\033[m"
	fi
done

### $option이 q일 경우 툴을 종료
if [[ $option == q ]]; then
	rm -rf /tmp/BackOn
	exit 0
fi

### Cydia 및 dpkg, apt-get 프로세스 실행금지 문구
#####################################################
echo
PRINTED_COUNTS=0
COLS=`tput cols`
while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   	printf =
 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
done
#####################################################
echo "*주의"
echo "BackOn이 실행되어 있는 동안 Cydia 실행 및 apt-get, dpkg 프로세스를 실행하지 마십시오."
echo "실행행위는 문제를 야기할 수 있습니다."
#####################################################
PRINTED_COUNTS=0
COLS=`tput cols`
while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   	printf =
 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
done
#####################################################
read -s -n 1 -p "계속하려면 아무 키나 누르십시오..."

### Backup
if [[ $option == 1 ]]; then
	while(true);
	do
		echo -e "\n\n저장할 백업 이름을 입력해 주세요."
		echo "(date를 입력하면 현재 날짜, 시간을 백업 이름으로 지정합니다.)"
		read -p "- " backup_name # 저장할 백업 파일 이름을 read하여 변수 backup_name으로 받아들임

		if [ -z "$backup_name" ]; then # $backup_name이 비었을 경우 exit 처리
			rm -rf /tmp/BackOn
			echo "취소되었습니다."
			exit 0
		fi

		if [ "$backup_name" == exit ]; then # $backup_name이 exit로 입력됐을 경우 exit 처리
			exit 0
		fi

		if [ "$backup_name" == date ]; then # $backup_name이 date로 입력됐을 경우 $backup_name을 현재의 날짜, 시간으로 값을 재정의
			backup_name=`date "+%Y-%m-%d_%H:%M:%S"`
		fi

		# 만약 입력한 backup_name이 /var/mobile/Media에 이미 존재할 경우, 이름 뒤에 -(2)을 붙여주기 위해서 namecount 변수를 지정하여 숫자를 정함. 그렇게 정해진 이름을 $backup_name에 다시 기록
		if [ -f "/var/mobile/Media/$backup_name.zip" ]; then
			while(true);
			do
				if [ -f "/var/mobile/Media/$backup_name-($namecount).zip" ]; then
					namecount=$(($namecount+1))
				else
					backup_name="$backup_name-($namecount)"
					break
				fi
			done
		fi

		mkdir "/tmp/BackOn/$backup_name"

		# 폴더 생성이 안 된 경우 백업 이름을 다시 지정하도록 처리 (백업 이름에 \같은 것이 있으면 오류남.)
		if [ -d "/tmp/BackOn/$backup_name" ]; then
			if [[ "$backup_name" == "\\" ]]; then
				echo -e "\033[1;31mERROR: 사용이 불가능한 이름입니다.\033[m"
			else
				break
			fi
		else
			echo -e "\033[1;31mERROR: 사용이 불가능한 이름입니다.\033[m"
		fi
	done

	echo -e "저장할 백업 이름 : \033[36m$backup_name\033[m"

	while(true);
	do
		# 각 작업 수행이 완료됐는지를 확인하기 위해 sc1, sc2라는 변수를 지정함. 수행 안 됐을 경우는 값이 0으로 설정되며(5, 6번째 줄 참조) 수행됐을 경우는 값이 1로 변환하여 더이상 해당 부분을 출력하지 않음.
		#####################################################
		PRINTED_COUNTS=0
		COLS=`tput cols`
		echo
		while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   			printf =
 			PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
		done
		echo
		#####################################################
		if [[ $sc1 == 0 ]]; then echo "(1) 설치된 Cydia 패키지와 소스를 백업"; fi
		echo "(2) Library를 백업"
		echo "(b) 백업된 파일들을 표시"
		echo "(s) 저장하고 종료"
		echo "(c) 취소하고 종료"
		#####################################################
		PRINTED_COUNTS=0
		COLS=`tput cols`
		while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   			printf =
 			PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
		done
		echo
		#####################################################

		echo "진행할 작업을 입력해 주세요."
		read -p "- " option_backup #작업할 것을 $option_backup이라는 변수로 받아들임

		# 만약 $option_backup이 지정된 값 이외의 것이 입력될 경우 아래와 같은 문구를 출력
		if [[ ! "$option_backup" == 1 ]]; then if [[ ! "$option_backup" == 2 ]]; then if [[ ! "$option_backup" == b ]]; then if [[ ! "$option_backup" == s ]]; then if [[ ! "$option_backup" == c ]]; then
			if [ -z "$option_backup" ]; then
				echo -e "\033[1;31mERROR: 입력란이 비었습니다. 다시 시도해 주세요.\033[m"
			else
				echo -e "\033[1;31mERROR: $option_backup은 지원하지 않는 기능입니다.\033[m"
			fi
		fi;fi;fi;fi;fi

		# 만약 $option_backup이 1인 경우 - (1) 설치된 Cydia 패키지와 소스를 백업
		if [[ "$option_backup" == 1 ]]; then
			echo "백업 중..."
			dpkg --get-selections > "/tmp/BackOn/$backup_name/apt.txt"
			cp /etc/apt/sources.list.d/cydia.list "/tmp/BackOn/$backup_name"
			cp /var/lib/cydia/metadata.plist "/tmp/BackOn/$backup_name"
			echo "백업 완료"
			sc1=1 #이런 식으로 sc1의 값을 1으로 변환
		fi

		# 만약 $option_bakcup이 2인 경우 - (2) Library를 백업
		if [[ "$option_backup" == 2 ]]; then
			if [ -d "/tmp/BackOn/$backup_name/Library" ]; then
				rm -rf "/tmp/BackOn/$backup_name/Library/Caches/*"
			else
				mkdir "/tmp/BackOn/$backup_name/Library"
			fi
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			echo
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			echo
			#####################################################
			ls /var/mobile/Library
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			#####################################################

			while(true);
			do
				echo -e "\n백업을 원하는 Library의 이름을 입력해 주세요."
				echo "(명령어: exit를 입력하여 Library 백업을 끝낼 수 있고, all을 입력하면 모두 백업할 수 있으며, Library 목록을 새로고침하려면 refresh를 입력하십시오.)"
				read -p "- " backup_library_name # 백업할 Library의 이름을 $backup_library_name이라는 변수로 받아들임

				# $backup_library_name이 exit로 입력됐을 경우 while 구문 break
				if [[ "$backup_library_name" == exit ]]; then
					if [[ $sc2 == 0 ]]; then echo "백업된 것이 없습니다."; fi
					break
				fi

				# $backup_library_name이 all로 입력됐을 경우 모두 백업하고 sc2의 값을 1로 변환하여 while 구문 break
				if [[ "$backup_library_name" == all ]]; then
					if [[ "$quiet" == quiet ]]; then
						echo "백업 중..."
						rsync -q -av --exclude="Caches" /var/mobile/Library/* "/tmp/BackOn/$backup_name/Library"
					else
						rsync -av --exclude="Caches" /var/mobile/Library/* "/tmp/BackOn/$backup_name/Library"
					fi

					if [ -f /var/mobile/Library/Caches/libactivator.plist ]; then
						echo "libactivator.plist 백업 중..."
						if [ ! -d "/tmp/BackOn/$backup_name/Library/Caches" ]; then
							mkdir "/tmp/BackOn/$backup_name/Library/Caches"
						fi
						cp /var/mobile/Library/Caches/libactivator.plist "/tmp/BackOn/$backup_name/Library/Caches"
					fi

					echo "백업 완료"
					sc2=1
					break
				fi

				# $backup_library_name에 아무 것도 입력 안 됐을 경우 while 구문 break
				if [ -z "$backup_library_name" ]; then
					echo -e "\033[1;31mERROR: 백업할 것이 없습니다.\033[m"
					if [[ $sc2 == 0 ]]; then
						rm -rf "/tmp/BackOn/$backup_name/Library"
					fi
					break
				fi

				if [[ "$backup_library_name" == Caches ]]; then
					if [ -d /var/mobile/Library/Caches ]; then
						if [ -f /var/mobile/Library/Caches/libactivator.plist ]; then
							echo -e "\033[1;36mCaches에서는 libactivator.plist만 백업됩니다.\033[m"
							echo "백업 중..."

							if [ ! -d "/tmp/BackOn/$backup_name/Library/Caches" ]; then
								mkdir "/tmp/BackOn/$backup_name/Library/Caches"
							fi

							cp /var/mobile/Library/Caches/libactivator.plist "/tmp/BackOn/$backup_name/Library/Caches"
							echo "백업 완료"
							sc2=1
						else
							echo -e "\033[1;31mERROR: Caches는 백업할 수 없습니다.\033[m"
						fi
					else
						echo -e "\033[1;31m$backup_library_name: 존재하지 않는 폴더나 파일입니다.\033[m"
					fi
				else
					if [[ "$backup_library_name" == refresh ]]; then
						#####################################################
						PRINTED_COUNTS=0
						COLS=`tput cols`
						echo
						while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   							printf =
 							PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
						done
						echo
						#####################################################
						ls /var/mobile/Library
						#####################################################
						PRINTED_COUNTS=0
						COLS=`tput cols`
						while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   							printf =
 							PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
						done
						#####################################################
					else
						if [ -d "/var/mobile/Library/$backup_library_name" ]; then # 만약 $backup_library_name이 directory인 경우는 백업하고 sc2의 값을 1로 변환
							echo "백업 중..."
							cp -r "/var/mobile/Library/$backup_library_name" "/tmp/BackOn/$backup_name/Library"
							echo "백업 완료"
							sc2=1
						else # 만약 directory가 아니거나 존재하지 않는 경우
							if [ -f "/var/mobile/Library/$backup_library_name" ]; then # 만약 file인 경우는 마찬가지로 백업하고 sc2의 값을 1로 변환
								echo "백업 중..."
								cp "/var/mobile/Library/$backup_library_name" "/tmp/BackOn/$backup_name/Library"
								echo "백업 완료"
								sc2=1
							else # directory도, file도 아닌 경우는 존재하지 않는다는 의미로 간주되어 안내문 출력
								echo -e "\033[1;31m$backup_library_name: 존재하지 않는 폴더나 파일입니다.\033[m"
							fi
						fi
					fi
				fi
			done
		fi

		# 만약 $option_backup이 b인 경우 - (b) 백업된 파일들을 표시
		if [[ "$option_backup" == b ]]; then
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			echo
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			echo
			#####################################################
			if [ -f "/tmp/BackOn/$backup_name/apt.txt" ]; then
				echo "Cydia 패키지 목록 백업(1) : 예"
			else
				echo "Cydia 패키지 목록 백업(1) : 아니오"
			fi

			if [ -f "/tmp/BackOn/$backup_name/cydia.list" ]; then
				echo "Cydia 소스 백업(1) : 예"
			else
				echo "Cydia 소스 백업(1) : 아니오"
			fi

			if [ -f "/tmp/BackOn/$backup_name/metadata.plist" ]; then
				echo "Cydia metadata 백업(1) : 예"
			else
				echo "Cydia metadata 백업(1) : 아니오"
			fi

			if [ -d "/tmp/BackOn/$backup_name/Library" ]; then
				echo -e "Library 백업(2) : 예 (아래에 백업된 파일이 표시됩니다.)\033[36m"
				ls /tmp/BackOn/$backup_name/Library
				echo -e -n "\033[m"
			else
				echo "Library 백업(2) : 아니오"
			fi
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			echo
			#####################################################
			read -s -n 1 -p "아무 키나 눌러서 메뉴로 돌아갑니다..."
			echo
		fi

		# 만약 $option_backup이 s인 경우 - (s) 저장하고 종료
		if [[ "$option_backup" = s ]]; then
			if [[ $sc1 == 0 ]]; then if [[ $sc2 = 0 ]]; then # sc1와 sc2의 값이 0인 경우, 다르게 말해 단 하나도 백업을 하지 않은 경우는 그냥 작업내용 지우고 exit 처리 (save 처리 안함)
				echo "백업된 것이 없어 저장할 수 없습니다."
				rm -rf /tmp/BackOn
				exit 0
			fi;fi

			# /var/mobile/Media/$backup_name.zip으로 압축
			# ./BackOn.sh backup quiet 명령어로 실행됐을 경우, 다시 말해 quiet 모드인 경우 조용히 압축
			cd "/tmp/BackOn/$backup_name"
			mkdir info
			echo "$version" >> info/backon_version # BackOn 버전을 info/backon_version 파일에 기록
			echo "$(sw_vers -productVersion)" >> info/ios_version # iOS 버전을 info/backon_version 파일에 기록

			if [[ "$quiet" == quiet ]]; then
				echo -e -n "\n압축 중..."
				zip -q -r "/var/mobile/Media/$backup_name.zip" *
			else
				zip -r "/var/mobile/Media/$backup_name.zip" *
			fi

			if [ ! -f "/var/mobile/Media/$backup_name.zip" ]; then # 압축이 제대로 안 된 경우
				rm -rf /tmp/BackOn
				echo -e "\033[1;31mERROR: 알 수 없는 오류로 백업이 진행되지 않았습니다. 지금까지 출력된 내응을 모두 복사하여 개발자에게 연락해 주세요.\033[m"
				exit 1
			else # 반대로 압축이 된 경우는 문구 출력하고 작업내용은 지우고 exit 처리
				rm -rf /tmp/BackOn
				echo -e "\n백업이 성공적으로 완료됐습니다. \033[36m/var/mobile/Media/$backup_name.zip\033[m으로 백업이 저장됐습니다."
				exit 0
			fi
		fi

		# 만약 $option_backup이 q인 경우 - (c) 취소하고 종료
		if [[ "$option_backup" = c ]]; then
			echo "백업을 지우는 중..."
			rm -rf /tmp/BackOn
			echo "완료"
			exit 0
		fi
	done
fi

### Restore
if [[ $option == 2 ]]; then
	echo -e "\n"
	# Mobile Terminal 프로세스 실행여부 체크 과정
	if [ -f /bin/ps ]; then
		ps cax | grep Terminal > /dev/null
		if [ $? -eq 0 ]; then
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
			   	printf =
			 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			#####################################################
			echo "*주의"
			echo "BackOn을 Mobile Terminal로 실행하는 것은 권하지 않습니다. 되도록이면 SSH를 통하여 실행해 주세요."
			echo "또는, SSH로 실행됐음에도 BackOn이 잘못 인식한 것일 수도 있습니다."
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
			   	printf =
			 	PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			#####################################################
			echo -e "\n실행을 계속하실려면 y를 입력해 주시고, BackOn을 종료하려면 n을 입력해 주세요."
			while(true);
			do
				read -p "- " answer_quit
				if [[ $answer_quit == y ]]; then
					break
				fi
				if [[ $answer_quit == n ]]; then
					exit 0
				else
					echo "y/n로만 입력해 주세요."
				fi
			done
		fi
	fi

	echo -e "\n벡업 파일 경로를 입력해 주세요."
	echo "(example 1 : /path/to/backup 또는 /path/to/backup.zip)"
	echo "(example 2 : 만일 /var/mobile/Media/backup.zip으로 저장된 경우에는 backup 또는 backup.zip으로만 입력해도 무관)"
	
	while(true);
	do
		read -p "- " backup_path # 복원할 백업 파일의 경로를 $backup_path에 기록

		# $backup_path가 exit로 입력됐을 경우 exit 처리
		if [[ "$backup_path" == exit ]]; then
			rm -rf /tmp/BackOn
			exit 0
		fi

		# $backup_path가 비었을 경우 exit 처리
		if [ -z "$backup_path" ]; then
			echo "취소되었습니다."
			rm -rf /tmp/BackOn
			exit 0
		fi

		# 입력된 $backup_path가 존재하지 않을 경우는 안내문을 출력하여 다시 시도, 반대로 존재할 경우 while 구문 break
		if [ -f "$backup_path" ]; then
			break
		else
			if [ -f "$backup_path.zip" ]; then # 만약 사용자가 .zip(확장자)을 빼먹고 입력했을 경우 자동으로 붙여서 인식
				backup_path="$backup_path.zip"
				break
			else
				if [ -f "/var/mobile/Media/$backup_path" ]; then # 만약 /var/mobile/Media에 존재하는 백업명만을 입력했을 경우 자동으로 경로를 완성하여 인식
					backup_path="/var/mobile/Media/$backup_path"
					break
				else
					if [ -f "/var/mobile/Media/$backup_path.zip" ]; then # 마찬가지로 .zip(확장자)을 빼먹고 입력했을 경우 자동으로 붙여서 인식 
						backup_path="/var/mobile/Media/$backup_path.zip"
						break
					else
						echo "$backup_path은(는) 존재하지 않습니다."
					fi
				fi
			fi
		fi
	done

	# $backup_path 압축해제
	# ./BackOn.sh restore quiet 명령어로 실행됐을 경우, 다시 말해 quiet 모드인 경우 조용히 압축해제
	if [[ "$quiet" == quiet ]]; then
		echo -e "\n압축해제 중..."
		unzip -qq "$backup_path" -d /tmp/BackOn
	else
		unzip "$backup_path" -d /tmp/BackOn
	fi

	# 압축해제한 백업 파일에 BackOn에서 백업한 것이 존재하지 않을 경우 exit 처리
	if [ ! -f /tmp/BackOn/apt.txt ]; then if [ ! -d /tmp/BackOn/Library ]; then
		echo "이것은 BackOn 백업 파일이 아닙니다."
		rm -rf /tmp/BackOn
		exit 1
	fi;fi

	echo "완료."

	# 백업할 당시의 iOS 버전과 현재 iOS 버전이 일치한지 체크 (백업에 iOS 버전을 기록하는 건 BackOn v0.41에 추가됨. 따라서 이 기능은 v0.41 이후에 백업된 백업 파일에서만 작동함.)
	if [ -f /tmp/BackOn/info/ios_version ]; then
		if [[ ! "$(cat /tmp/BackOn/info/ios_version)" == "$(sw_vers -productVersion)" ]]; then
			echo -e "\n백업할 때의 iOS 버전과 현재 기기의 iOS 버전이 일치하지 않습니다. 버전이 달라서 백업이 완벽히 호환되지 않을 수도 있습니다."
			echo "계속하실려면 y를 입력해 주시고, BackOn을 종료하려면 n을 입력해 주세요."
			while(true);
			do
				read -p "- " answer_quit
				if [[ $answer_quit == y ]]; then
					break
				fi
				if [[ $answer_quit == n ]]; then
					rm -rf /tmp/BackOn
					exit 0
				else
					echo "y/n로만 입력해 주세요."
				fi
			done
		fi
	fi

	while(true);
	do
		# 각 작업 수행이 완료됐는지를 확인하기 위해 sc1, sc2라는 변수를 지정함. 수행 안 됐을 경우는 값이 0으로 설정되며(5, 6번째 줄 참조) 수행됐을 경우는 값이 1로 변환하여 더이상 해당 부분을 출력하지 않음.
		# 다만 이 부분은 backup과는 다르게, 해당 부분이 백업되지 않았을 경우는 복원을 완료하지 않았더라도 sc0과 sc1을 1이라는 변수로 바꿔서 더이상 출력하지 않게끔 함.
		echo -e "\n이 백업은 아래의 복원을 지원합니다:"
		#####################################################
		PRINTED_COUNTS=0
		COLS=`tput cols`
		while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   			printf =
 			PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
		done
		echo
		#####################################################
		if [[ $sc1 == 0 ]]; then
			if [ -f /tmp/BackOn/apt.txt ]; then
				echo "(1) Cydia 패키지, 소스 복원"
			else
				sc1=2
			fi
		fi

		if [[ $sc2 = 0 ]]; then
			if [ -d /tmp/BackOn/Library ]; then
				echo "(2) Library 복원"
			else
				sc2=2
			fi
		fi
		#####################################################
		PRINTED_COUNTS=0
		COLS=`tput cols`
		while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   			printf =
 			PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
		done
		echo
		#####################################################
		echo "복원 원하는 것의 숫자를 입력해 주세요."
		echo "(reboot을 입력하면 기기가 재부팅되고, exit를 입력하면 툴을 종료합니다.)"
		read -p "- " option_restore # 작업할 것을 $option_restore이라는 변수로 받아들임.

		# 만약 $option_restore이 지정된 값 이외의 것이 입력될 경우 아래와 같은 문구를 출력값
		if [[ ! "$option_restore" == 1 ]]; then if [[ ! "$option_restore" == 2 ]]; then if [[ ! "$option_restore" == exit ]]; then if [[ ! "$option_restore" == reboot ]]; then
			if [ -z "$option_restore" ]; then
				echo -e "\033[1;31mERROR: 입력란이 비었습니다. 다시 시도해 주세요.\033[m"
			else
				echo -e "\033[1;31mERROR: $option_restore은 지원하지 않는 기능입니다.\033[m"
			fi
		fi;fi;fi;fi

		# $option_restore가 exit라는 값을 경우 exit 처리
		if [[ "$option_restore" == exit ]]; then
			if [[ $sc1 == 1 || $sc2 == 1 ]]; then
				echo -e "\n복원 후에는 Cahces 정리할 것을 권고합니다. 정리하시겠습니까? (y/n)"
				while(true);
				do
					read -p "- " answer_clear_caches
					if [[ "$answer_clear_caches" == y ]]; then
						echo "Caches 정리 중..."
						if [ -f /var/mobile/Library/Caches/libactivator.plist ]; then
							mv /var/mobile/Library/Caches/libactivator.plist /tmp/BackOn
							rm -rf /var/mobile/Library/Caches/*
							mv /tmp/BackOn/libactivator.plist /var/mobile/Library/Caches
						else
							rm -rf /var/mobile/Library/Caches/*
						fi
						echo "완료"
						break
					fi
					if [[ "$answer_clear_caches" == n ]]; then
						echo
						break
					else
						echo "y/n로만 입력해 주세요."
					fi
				done
			fi
			echo "압축해제된 폴더를 지우는 중..."
			rm -rf /tmp/BackOn
			echo "완료"
			exit 0
		fi

		# 만약 $option_restore가 1인 경우 - (1) Cydia 패키지, 소스 복원
		if [[ "$option_restore" == 1 ]]; then
			cp /tmp/BackOn/cydia.list /etc/apt/sources.list.d
			cp /tmp/BackOn/metadata.plist /var/lib/cydia
			apt-get update
			dpkg --set-selections < /tmp/BackOn/apt.txt
			apt-get -y --force-yes -u dselect-upgrade
			echo "복원 완료"
			sc1=1
		fi

		# 만약 $option_restore가 2인 경우 - (2) Library 복원
		if [[ "$option_restore" == 2 ]]; then
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			echo
			#####################################################
			ls /tmp/BackOn/Library
			#####################################################
			PRINTED_COUNTS=0
			COLS=`tput cols`
			while [[ ! $PRINTED_COUNTS == $COLS ]]; do
   				printf =
 				PRINTED_COUNTS=$(($PRINTED_COUNTS+1))
			done
			#####################################################

			while(true);
			do
				echo -e "\n복원을 원하는 Library의 이름을 입력해 주세요."
				echo "(exit를 입력하여 이 복원을 끝내고, all을 입력하여 모두 복원할 수 있습니다.)"
				read -p "- " restore_library_name # 복원할 Library의 이름을 $restore_library_name이라는 변수로 받아들임

				# $restore_library_name이 exit로 입력됐을 경우 while 구문 break
				if [[ "$restore_library_name" == exit ]]; then
					if [[ $sc2 == 0 ]]; then echo "복원된 것이 없습니다."; fi
					chmod 777 /var/mobile/Library/Preferences/*
					break
				fi

				# $restore_library_name이 all로 입력됐을 경우 모두 백업하고 sc2의 값을 1로 변환하여 while 구문 break
				if [[ "$restore_library_name" == all ]]; then
					echo "복원 중..."
					cp -r /tmp/BackOn/Library/* /var/mobile/Library
					echo "복원 완료"
					sc2=1
					break
				fi

				# $restore_library_name에 아무 것도 입력 안 됐을 경우 while 구문 break
				if [ -z "$restore_library_name" ]; then
					echo -e "\033[1;31mERROR: 복원할 것이 없습니다.\033[m"
					chmod 777 /var/mobile/Library/Preferences/*
					break
				fi

				if [ -d "/tmp/BackOn/Library/$restore_library_name" ]; then # 만약 $restore_library_name이 directory인 경우는 복원하고 sc2의 값을 1로 변환
					echo "복원 중..."
					cp -r "/tmp/BackOn/Library/$restore_library_name" /var/mobile/Library
					echo "복원 완료"
					sc2=1
				else # 만약 directory가 아니거나 존재하지 않는 경우
					if [ -f "/tmp/BackOn/Library/$restore_library_name" ]; then # 만약 file인 경우는 마찬가지로 복원하고 sc2의 값을 1로 변환
						echo "복원 중..."
						cp "/tmp/BackOn/Library/$restore_library_name" /var/mobile/Library
						echo "복원 완료"
						sc2=1
					else # directory도, file도 아닌 경우는 존재하지 않는다는 의미로 간주되어 안내문 출력
						echo -e "\033[1;31m$restore_library_name: 존재하지 않는 폴더나 파일입니다.\033[m"
					fi
				fi
			done
		fi

		# Library 복원을 진행했을 경우 Permission 수정
		if [[ $sc2 == 1 ]]; then
			echo "권한 수정 중..."
			chmod -R 755 /var/mobile/Library/*
			echo "완료"
		fi

		# 만약 sc1와 sc2의 값이 모두 1인 경우, 다시 말해 작업할 수 있는 것을 모두 했을 경우는 exit/option_restore=reboot 처리
		if [[ $sc1 == 1  || $sc1 == 2 ]]; then if [[ $sc2 == 1 || $sc2 == 2 ]]; then
			while(true);
			do
				echo -e "\n가능한 모든 작업을 완료했습니다. 재부팅하시겠습니까? (y/n)"
				read -p "- " answer_reboot

				if [[ ! $answer_reboot == y ]]; then if [[ ! $answer_reboot == n ]]; then
					echo -e "\033[1;31mERROR: y/n 중 하나로만 입력해 주세요.\033[m"
				fi;fi

				if [[ $answer_reboot == y ]]; then
					option_restore=reboot
					break
				fi

				if [[ $answer_reboot == n ]]; then
					break
				fi
			done
		fi;fi

		# 만약 $option_restore가 reboot인 경우
		if [[ "$option_restore" == reboot || "$answer_reboot" == n ]]; then
			echo -e "\n복원 후에는 Cahces 정리할 것을 권장합니다. 정리하시겠습니까? (y/n)"
			while(true);
			do
				read -p "- " answer_clear_caches
				if [[ "$answer_clear_caches" == y ]]; then
					echo "Caches 정리 중..."
					if [ -f /var/mobile/Library/Caches/libactivator.plist ]; then
						mv /var/mobile/Library/Caches/libactivator.plist /tmp/BackOn
						rm -rf /var/mobile/Library/Caches/*
						mv /tmp/BackOn/libactivator.plist /var/mobile/Library/Caches
					else
						rm -rf /var/mobile/Library/Caches/*
					fi
					echo "완료"
					break
				fi
				if [[ "$answer_clear_caches" == n ]]; then
					echo
					break
				else
					echo "y/n로만 입력해 주세요."
				fi
			done

			if [[ "$answer_reboot" == n ]]; then
				echo "압축해제된 폴더를 지우는 중..."
				rm -rf /tmp/BackOn
				echo "완료"
				exit 0
			fi

			echo -e -n "\n기기가 $reboot_count초 후에 재부팅됩니다."
			sleep 1

			while(true);
			do
				reboot_count=$(($reboot_count-1))
				echo -e -n "\r기기가 $reboot_count초 후에 재부팅됩니다."
				sleep 1

				if [[ $reboot_count == 0 ]]; then
					echo -e "\n재부팅..."
					kill 1
					exit 0
				fi
			done
		fi
	done
fi