.PHONY: c cpp go java python rust swift node pascal fortran dart fortran pascal

c:
	${CC} c/main.c -o /tmp/main_c
	/tmp/main_c

cpp:
	${CXX} cpp/main.cpp -o /tmp/main_cpp
	/tmp/main_cpp

go:
	go run go/main.go

java:
	javac -d /tmp/main_java java/Main.java
	java -cp /tmp/main_java Main

python:
	python3 python/main.py

rust:
	rustc rust/main.rs -o /tmp/main_rs
	/tmp/main_rs

swift:
	swift swift/main.swift

node:
	node node/main.js

pascal:
	fpc pascal/main.pas -o/tmp/main_pascal
	/tmp/main_pascal

fortran:
	gfortran fortran/main.pas -o/tmp/main_fortran
	/tmp/main_fortran

dart:
	dart dart/main.dart -o /tmp/main_dart
	/tmp/main_dart