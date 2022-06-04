cmake_minimum_required(VERSION 3.1)

set(src 
	detector_tool.h
	detector_tool.cpp
	convert_color.h
	convert_color.cpp
	color_table_editor.cpp
	color_table.h
	color_table.cpp
	object_types.h
	hpl_types.h
)

find_package(OpenCV REQUIRED)

add_executable(main ${src})
target_include_directories(main PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries(main ${OpenCV_LIBS})
