# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/fusion
    REF boost-${VERSION}
    SHA512 15238eb4f2743910958a19efde23098677c0aa8a5988151d5aec2aef558ac398db444770e6f1e22952d7cd72213c6237e55cc3363dadf9f988bac907914cb263
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})