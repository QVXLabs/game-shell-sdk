import os
import argparse
import re
from string import Template

# Template for Find<Package>.cmake file
FIND_PACKAGE_TEMPLATE = """
find_package(PkgConfig REQUIRED)

pkg_check_modules({cmake_pkg_prefix} REQUIRED {pkg_name})

add_library({cmake_target_name} INTERFACE IMPORTED)
set_target_properties({cmake_target_name} PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                      "${{{cmake_pkg_prefix}_INCLUDE_DIRS}}")
set_target_properties({cmake_target_name} PROPERTIES INTERFACE_LINK_DIRECTORIES
                      "${{{cmake_pkg_prefix}_LIBRARY_DIRS}}")
set_target_properties({cmake_target_name} PROPERTIES INTERFACE_LINK_LIBRARIES
                      "${{{cmake_pkg_prefix}_LIB_LIBRARIES}}")
set_target_properties({cmake_target_name} PROPERTIES INTERFACE_COMPILE_OPTIONS
                      "${{{cmake_pkg_prefix}_CFLAGS_OTHER}}")
"""


def generate_find_package_scripts(pc_paths, output_path):
    """
    Generates Find<Package>.cmake scripts from .pc files.
    
    Args:
        pc_paths (list): Paths to directories containing .pc files.
        output_path (str): Output directory for generated CMake files.
    """
    os.makedirs(output_path, exist_ok=True)

    for path in pc_paths:
        if not os.path.exists(path):
            print(f"Warning: Path '{path}' does not exist. Skipping...")
            continue

        for filename in os.listdir(path):
            if filename.endswith(".pc"):
                # extract package name
                # Remove .pc extension
                pkg_name = os.path.splitext(filename)[0]
                cmake_pkg_name = re.sub('-', '_', pkg_name)
                cmake_pkg_prefix = re.sub('-', '_', pkg_name.upper())
                cmake_target_name = cmake_pkg_name + "::" + cmake_pkg_name
                # cmake module file name
                cmake_filename = os.path.join(output_path,
                                              f"Find{pkg_name}.cmake")
                # generate cmake file
                with open(cmake_filename, "w") as cmake_file:
                    cmake_file.write(FIND_PACKAGE_TEMPLATE.format(
                        pkg_name=pkg_name,
                        cmake_pkg_prefix=cmake_pkg_prefix,
                        cmake_target_name=cmake_target_name
                    ))
                print(f"Generated file: {cmake_filename}")


if __name__ == "__main__":
    # Setup argument parser
    parser = argparse.ArgumentParser(
        description="Generate Find<Package>.cmake scripts from .pc files."
    )
    parser.add_argument(
        "--pc-paths",
        type=str,
        nargs="+",
        required=True,
        help="Paths to directories containing .pc files (space-separated for multiple paths)."
    )
    parser.add_argument(
        "--output",
        type=str,
        required=True,
        help="Output directory for generated Find<Package>.cmake files."
    )

    args = parser.parse_args()

    # Generate the Find<Package>.cmake files
    generate_find_package_scripts(args.pc_paths, args.output)
