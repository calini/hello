.PHONY: go c cpp java python rust swift

GOC = go
JAVAC = javac
JAVAR = java
PYTHONC = python3
RUSTC = rustc
SWIFTC = swift
PASCAL = fpc
FORTRANC = gfortran

c:
	${CC} c/main.c -o /tmp/main_c
	/tmp/main_c

cpp:
	${CXX} cpp/main.cpp -o /tmp/main_cpp
	/tmp/main_cpp

go:
	${GOC} run go/main.go

java:
	${JAVAC} -d /tmp/main_java java/Main.java
	${JAVAR} -cp /tmp/main_java Main

python:
	${PYTHONC} python/main.py

rust:
	${RUSTC} rust/main.rs -o /tmp/main_rs
	/tmp/main_rs

swift:
	${SWIFTC} swift/main.swift

pascal:
	${PASCAL} turbo-pascal/main.pas -o/tmp/main_pascal
	/tmp/main_pascal

fortran:
	${FORTRAN} fortran/main.pas -o/tmp/main_fortran
	/tmp/main_fortran
