cmake_minimum_required(VERSION 3.28)
project(Hello)

option(EXAMPLE_USE_JPEG "Add jpeg support")

set(EXAMPLE_USE_PNG ON CACHE BOOL "variable docs")


set(EXAMPLE_USE_SUPER_PNG ON CACHE BOOL "Super advance variable")
mark_as_advanced(EXAMPLE_USE_SUPER_PNG)

set(EXAMPLE_ENUM_VAL "ejemplo 2" CACHE STRING "Ejemplo de enumeración")
set_property(CACHE EXAMPLE_ENUM_VAL PROPERTY STRINGS
  "ejemplo 1"
  "ejemplo 2"
  "ejemplo 3"
)