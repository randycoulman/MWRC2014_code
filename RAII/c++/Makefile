all: broken wordy raii

broken: broken.cpp support.cpp main.cpp
	$(CXX) $^ -o $@

wordy: wordy.cpp support.cpp main.cpp
	$(CXX) $^ -o $@

raii: raii.cpp support.cpp SafeResource.cpp main.cpp
	$(CXX) $^ -o $@

main.o support.o SafeResource.o broken.o wordy.o raii.o: support.h
raii.o SafeResource.o: SafeResource.h
