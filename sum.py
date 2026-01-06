def main():
    print("두 숫자의 합을 구하는 프로그램입니다.")
    try:
        num1 = float(input("첫 번째 숫자를 입력하세요!: "))
        num2 = float(input("두 번째 숫자를 입력하세요!: "))
        result = num1 + num2
        # 정수 입력시 .0을 떼고 보여주기 위해 조건부 포맷팅을 할 수도 있지만, 
        # 일반적인 float 출력을 유지합니다.
        print(f"결과: {num1} + {num2} = {result}")
    except ValueError:
        print("오류: 유효한 숫자를 입력해주세요.")

if __name__ == "__main__":
    main()
