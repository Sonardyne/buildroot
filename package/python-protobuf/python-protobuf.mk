################################################################################
#
# python-protobuf
#
################################################################################

# Fetched directly from PyPI rather than sharing PROTOBUF_VERSION/PROTOBUF_SITE
PYTHON_PROTOBUF_VERSION = 6.33.5
PYTHON_PROTOBUF_SOURCE = protobuf-$(PYTHON_PROTOBUF_VERSION).tar.gz
PYTHON_PROTOBUF_SITE = https://files.pythonhosted.org/packages/ba/25/7c72c307aafc96fa87062aa6291d9f7c94836e43214d43722e86037aac02
PYTHON_PROTOBUF_LICENSE = BSD-3-Clause
PYTHON_PROTOBUF_LICENSE_FILES = LICENSE
PYTHON_PROTOBUF_SETUP_TYPE = setuptools

$(eval $(python-package))
