CXX = clang++

CPPREACTPATH = /home/bsomers/cpp.react

CXXFLAGS = -I$(CPPREACTPATH)/include
LFLAGS = -L$(CPPREACTPATH)/build/lib -lCppReact -ltbb -lGLEW -lglfw -lGL
#CXXFLAGS = -I/usr/local/Cellar/glew/1.10.0/include/GL \
#		   -I/usr/local/Cellar/glfw3/3.0.4/include
#LFLAGS = -L/usr/local/Cellar/glew/1.10.0/lib -lGLEW \
#		 -L/usr/local/Cellar/glfw3/3.0.4/lib -lglfw3 \
#		 -framework OpenGL

all:
	$(CXX) -std=c++11 -Wall $(CXXFLAGS) -o thermite thermite.cc $(LFLAGS)

clean:
	@rm -f thermite
