cmake_minimum_required(VERSION 3.20)
project(VECULevel1 LANGUAGES C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

add_library(vecu_asw STATIC src/vecu.c)

target_include_directories(vecu_asw PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(vecu_demo src/main.c)
target_link_libraries(vecu_demo PRIVATE vecu_asw)

enable_testing()
add_test(NAME vecu_demo_runs COMMAND vecu_demo)
