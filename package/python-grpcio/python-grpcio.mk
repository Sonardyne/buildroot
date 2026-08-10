################################################################################
#
# python-grpcio
#
################################################################################

PYTHON_GRPCIO_VERSION = 1.81.0
PYTHON_GRPCIO_SOURCE = grpcio-$(PYTHON_GRPCIO_VERSION).tar.gz
PYTHON_GRPCIO_SITE = https://files.pythonhosted.org/packages/15/f3/23f47b24f8d8c2028eba501db3acfbb2f592cbb5995eaa6e363a627b74d7
PYTHON_GRPCIO_SETUP_TYPE = setuptools
PYTHON_GRPCIO_LICENSE = Apache-2.0
PYTHON_GRPCIO_LICENSE_FILES = LICENSE

# Remove license field from toml file. GRPCIO version licence incompatible with setuptools, which aborts build
# Licence already tracked above
define PYTHON_GRPCIO_REMOVE_PYPROJECT_LICENSE
	$(SED) '/^license = "Apache-2.0"$$/d' $(@D)/pyproject.toml
endef
PYTHON_GRPCIO_POST_PATCH_HOOKS += PYTHON_GRPCIO_REMOVE_PYPROJECT_LICENSE

$(eval $(python-package))
