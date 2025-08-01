set(CMAKE_SYSTEM_NAME Generic)

# Install with `espup install --extended-llvm`
set(CMAKE_C_COMPILER "$ENV{CLANG_PATH}")

set(CLANG_DIR_PATH "${CMAKE_C_COMPILER}")
cmake_path(REMOVE_FILENAME CLANG_DIR_PATH)

set(CMAKE_AR "${CLANG_DIR_PATH}/llvm-ar")
set(CMAKE_RANLIB "${CLANG_DIR_PATH}/llvm-ranlib")
set(CMAKE_OBJDUMP xtensa-esp32s2-elf-objdump)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --target=xtensa-esp-elf -mcpu=esp32s2"
  CACHE STRING "C Compiler Base Flags" 
  FORCE)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --target=xtensa-esp-elf -mcpu=esp32s2"
  CACHE STRING "C++ Compiler Base Flags" 
  FORCE)

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} --target=xtensa-esp-elf -mcpu=esp32s2 -Xassembler --longcalls"
  CACHE STRING "Assembler Base Flags" 
  FORCE)
