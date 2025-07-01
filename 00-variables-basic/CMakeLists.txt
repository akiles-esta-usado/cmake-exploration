cmake_minimum_required(VERSION 3.20)
project(Hello)

# Esto se muestra al ejecutar `cmake ..` en la carpeta "build"

set(VAR 1 2 3 4)

message("Hola amigos")        # Hola amigos
message("Como lista " ${VAR}) # Como lista 1234
message("${VAR}")             # 1;2;3;4
message(${VAR})               # 1234
message(1;2;3;4)              # 1234
message("a" "b" "c")          # abc
message(a;b;c)          # abc

# Algunas variables interesantes

# message("CMAKE_BUILD_TYPE "${CMAKE_BUILD_TYPE})

message("Starting foreach example")
foreach(var;a;b;c)
  message("   " ${var})
endforeach()
