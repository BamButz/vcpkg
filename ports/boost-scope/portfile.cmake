# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/scope
    REF boost-${VERSION}
    SHA512 60d4baf7dd7bd41c252ec41964f84877546782468d78d6a01b26b3f6d5cef067466110d4d66290a67d7dfd6b65dbe22954f7d641f89dcd243f756a5f46662c6f
    HEAD_REF master
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
