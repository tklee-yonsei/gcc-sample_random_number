#include <iostream>
#include <cstdlib>
#include <ctime>

int main() {
    std::srand(std::time(nullptr)); // 현재 시간으로 시드 설정
    int random_number = std::rand() % 100; // 0에서 99 사이의 랜덤 숫자 생성
    std::cout << "Random number: " << random_number << std::endl;
    return 0;
}
