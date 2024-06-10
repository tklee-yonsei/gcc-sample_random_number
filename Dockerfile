# 베이스 이미지로 Debian Bullseye 사용
FROM debian:bullseye

# 패키지 리스트 업데이트 및 특정 버전의 g++ 설치
RUN apt-get update && apt-get install -y \
    g++-10 \
    gdb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리 설정
WORKDIR /app

# 터미널에서 사용할 bash 설치
RUN apt-get install -y bash

# 기본 실행 명령어 설정 (빌드 후 프로그램을 실행)
CMD [ "bash" ]
