- init:
    run: rm -f m1q2
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror m1q2.c -o m1q2  # timeout: 2
    blocker: true

- case1:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "3 6 9"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "1"
        - expect: "strictly increasing\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0

- case2:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "6 6 3"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "2"
        - expect: "decreasing\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0

- case3:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "6 7 9"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "3"
        - expect: "the maximum number is 9\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0

- case4:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "6 7 9"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "4"
        - expect: "9 7 6\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0

- case5:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "6 7 9"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "5"
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "1 2 1"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "3"
        - expect: "the maximum number is 2\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0

- case6:
    run: ./m1q2
    points: 1
    script:
        - expect: "Give three integers separated with space:"  # timeout: 2
        - send: "6 7 9"
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "6"
        - expect: "not a defined option, try again\r\n"  # timeout: 2
        - expect:  "Which task would you like to perform\\?\r\n"  # timeout: 2
        - expect:  "1 to check if the list is strictly increasing or decreasing\r\n"  # timeout: 2
        - expect:  "2 to check if the list is increasing or decreasing\r\n"  # timeout: 2
        - expect:  "3 to compute the maximum number in the list\r\n"  # timeout: 2
        - expect:  "4 to reverse the list\r\n"  # timeout: 2
        - expect:  "5 to enter a new list of integers\r\n"  # timeout: 2
        - expect:  "-1 to terminate the program\r\n"  # timeout: 2
        - send: "-1"
    exit: 0