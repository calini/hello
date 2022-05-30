.PHONY: go c cpp java python rust swift

GC = go
JC = javac
JR = java
PYC = python3
RC = rustc
SC = swift
TPC = fpc

all: go c cpp java python rust

go:
	${GC} run go/main.go

c:
	${CC} c/main.c -o /tmp/main_c
	/tmp/main_c

cpp:
	${CXX} cpp/main.cpp -o /tmp/main_cpp
	/tmp/main_cpp

pascal:
	${TPC} turbo-pascal/main.pas -o/tmp/main_pas
	/tmp/main_pas

java:
	${JC} -d /tmp/main_java java/Main.java
	${JR} -cp /tmp/main_java Main

python:
	${PYC} python/main.py

rust:
	${RC} rust/main.rs -o /tmp/main_rs
	/tmp/main_rs

swift:
	${SC} swift/main.swift