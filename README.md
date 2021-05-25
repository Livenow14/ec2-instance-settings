# **[ec2] 초기 세팅 스크립트**

### **1. Git clone 받기**

![https://user-images.githubusercontent.com/48986787/119519380-54d5e900-bdb4-11eb-91d0-56cb52338b64.png](https://user-images.githubusercontent.com/48986787/119519380-54d5e900-bdb4-11eb-91d0-56cb52338b64.png)

### **2. 파일 확인 (first-settings 폴더)**

![https://user-images.githubusercontent.com/48986787/119519836-bac27080-bdb4-11eb-9fc4-405b8e04699c.png](https://user-images.githubusercontent.com/48986787/119519836-bac27080-bdb4-11eb-9fc4-405b8e04699c.png)

### **3. DockerFile 수정**

**before**

![https://user-images.githubusercontent.com/48986787/119520071-ea717880-bdb4-11eb-8a24-2bb2cc32ac11.png](https://user-images.githubusercontent.com/48986787/119520071-ea717880-bdb4-11eb-8a24-2bb2cc32ac11.png)

**after**

![https://user-images.githubusercontent.com/48986787/119520273-1d1b7100-bdb5-11eb-9076-e21fe53b2148.png](https://user-images.githubusercontent.com/48986787/119520273-1d1b7100-bdb5-11eb-9076-e21fe53b2148.png)

### **4. nginx.config 수정**

**before**

![https://user-images.githubusercontent.com/48986787/119520481-4a681f00-bdb5-11eb-9dc5-8be2bb32f1c0.png](https://user-images.githubusercontent.com/48986787/119520481-4a681f00-bdb5-11eb-9dc5-8be2bb32f1c0.png)

**after**

![https://user-images.githubusercontent.com/48986787/119520727-826f6200-bdb5-11eb-9df4-59020df249b3.png](https://user-images.githubusercontent.com/48986787/119520727-826f6200-bdb5-11eb-9df4-59020df249b3.png)

### **5. docker-compose.yml 수정**

**before**

![https://user-images.githubusercontent.com/48986787/119521584-4092eb80-bdb6-11eb-9c2d-d506d33dac79.png](https://user-images.githubusercontent.com/48986787/119521584-4092eb80-bdb6-11eb-9c2d-d506d33dac79.png)

**after**

![https://user-images.githubusercontent.com/48986787/119525381-6a99dd00-bdb9-11eb-9a90-2027b18a762b.png](https://user-images.githubusercontent.com/48986787/119525381-6a99dd00-bdb9-11eb-9a90-2027b18a762b.png)

### **6, [0.all-setting.sh](http://0.all-setting.sh) 실행**

### **실행하기전에 주의점!!**

```java
$ sudo sh 0.all-setting.sh 도메인명
```

옵션에 도메인명을 꼭 적어주세요..! 

(제대로 안적으면 어떻게될지.. 전몰라요 ㅎㅎ)

예시)

```java
$ sudo sh 0.all-setting.sh gump-test.p-e.kr
```

![https://user-images.githubusercontent.com/48986787/119522368-db8bc580-bdb6-11eb-809d-5dbe7ffa5224.png](https://user-images.githubusercontent.com/48986787/119522368-db8bc580-bdb6-11eb-809d-5dbe7ffa5224.png)

> 많은 것을 다운받기에 시간이 걸려요😊

### **7. 도메인에 TXT 설정**

 " > TLS 설정..."이 나오면, 

이메일, y , y 해줘요. 막 엔터치면 안됨!!!

즉, `주의할점`은  continue에서 아래의 키 값을 받아야 해요.

![https://user-images.githubusercontent.com/48986787/119523440-b8154a80-bdb7-11eb-8006-307879267a3e.png](https://user-images.githubusercontent.com/48986787/119523440-b8154a80-bdb7-11eb-8006-307879267a3e.png)

위의 키값을 

![https://user-images.githubusercontent.com/48986787/119523826-0a566b80-bdb8-11eb-9967-8fe06e292bcc.png](https://user-images.githubusercontent.com/48986787/119523826-0a566b80-bdb8-11eb-9967-8fe06e292bcc.png)

도메인 설정의 txt에다 넣어주고, 저장을 해요.

그 다음 continue로 tls설정을 끝내요.(순서에 주의해 주세요)

> 도메인에 접속해보면 아래와 같이 나와요

![https://user-images.githubusercontent.com/48986787/119524754-e0ea0f80-bdb8-11eb-906f-7bbf8b03d27d.png](https://user-images.githubusercontent.com/48986787/119524754-e0ea0f80-bdb8-11eb-906f-7bbf8b03d27d.png)

### **끗~!**