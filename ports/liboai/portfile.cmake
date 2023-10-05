vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO D7EAD/liboai
    REF v3.2.1
    SHA512 90324882860a74f06a7deaaff6bec6863463c2e197d376dbbcfb0c6025063a24d9a9502b3079d2dfbb240c927a06f437c5ce853c147eac008995c1915e421cc5
)

vcpkg_cmake_configure(
	SOURCE_PATH "${SOURCE_PATH}/liboai"
)

vcpkg_cmake_install()

# Remove duplicate includes
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

# Move binaries and cleanup
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/bin")
file(MAKE_DIRECTORY "${CURRENT_PACKAGES_DIR}/debug/bin")
file(COPY_FILE "${CURRENT_PACKAGES_DIR}/lib/oai.dll" "${CURRENT_PACKAGES_DIR}/bin/oai.dll")
file(REMOVE "${CURRENT_PACKAGES_DIR}/lib/oai.dll")
file(COPY_FILE "${CURRENT_PACKAGES_DIR}/debug/lib/oai.dll" "${CURRENT_PACKAGES_DIR}/debug/bin/oai.dll")
file(REMOVE "${CURRENT_PACKAGES_DIR}/debug/lib/oai.dll")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")