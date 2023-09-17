py_library(
    name = "lib",
    srcs = ["lib.py"],
    srcs_version = "PY3",
)

py_test(
    name = "test",
    srcs = ["lib_test.py"],
    main = "lib_test.py",
    srcs_version = "PY3",
    deps = [":lib"],
)


py_binary(
    name = "bin",
    srcs = ["bin.py"],
    srcs_version = "PY3",
    deps = [":lib"],
)

filegroup(
    name = "srcs",
    srcs = ["BUILD"] + glob(["**/*.py"]),
)