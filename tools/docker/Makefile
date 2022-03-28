# General commands
.PHONY: help
BOLD=\e[1m
RESET=\e[0m

help:
	@echo -e "${BOLD}SYNOPSIS${RESET}"
	@echo -e "\tmake <TARGET> [NOCACHE=1]"
	@echo
	@echo -e "${BOLD}DESCRIPTION${RESET}"
	@echo -e "\tTools to generate various deliveries for linux distros"
	@echo
	@echo -e "${BOLD}MAKE TARGETS${RESET}"
	@echo -e "\t${BOLD}help${RESET}: display this help and exit."
	@echo
	@echo -e "\t${BOLD}delivery${RESET}: Build ${BOLD}archives${RESET} and ${BOLD}python${RESET} targets."
	@echo -e "\t${BOLD}test_delivery${RESET}: Build ${BOLD}test_archives${RESET} and ${BOLD}test_python${RESET} targets."
	@echo
	@echo -e "\t${BOLD}archives${RESET}: Build all OR-Tools archives in export."
	@echo -e "\t${BOLD}test_archives${RESET}: Test each OR-Tools archives for all ${BOLD}<distro>${RESET} and ${BOLD}<lang>${RESET}."
	@echo
	@echo -e "${BOLD}PYTHON${RESET}"
	@echo -e "\t${BOLD}python${RESET}: Build alpine and manylinux2014 python 'ortools' wheel packages (3.6+)."
	@echo -e "\t${BOLD}python_<platform>${RESET}: Build all python 'ortools' wheel packages (3.6+) for a specific platform."
	@echo -e "\t${BOLD}python_<platform>_<step>${RESET}: Build all python 'ortools' wheel packages (3.6+) for a specific platform."
	@echo -e "\t${BOLD}python_<target>_<step>${RESET}: Build python 'ortools' wheel packages (3.6+) for a specific target."
	@echo -e "\t${BOLD}save_python_<target>${RESET}: Save python 'ortools' image."
	@echo -e "\t${BOLD}clean_python_<target>${RESET}: Clean manylinux2014 and alpine python 'ortools' wheel packages."
	@echo -e "\t${BOLD}sh_python_<target>${RESET}: Run a container using the python 'ortools' image."
	@echo
	@echo -e "\t${BOLD}<platform>${RESET}:"
	@echo -e "\t\t${BOLD}amd64${RESET}"
	@echo -e "\t\t${BOLD}arm64v8${RESET}"
	@echo
	@echo -e "\t${BOLD}<target>${RESET}:"
	@echo -e "\t\t${BOLD}<platform>_<distro>${RESET}"
	@echo -e "\t\t${BOLD}<platform>_manylinux_cp<version>${RESET}"
	@echo
	@echo -e "\t${BOLD}<distro>${RESET}:"
	@echo -e "\t\t${BOLD}alpine${RESET} (latest)"
	@echo -e "\t\t${BOLD}manylinux${RESET} (manylinux2014)"
	@echo
	@echo -e "\t${BOLD}<version>${RESET}:"
	@echo -e "\t\t${BOLD}36${RESET} Python3.6"
	@echo -e "\t\t${BOLD}37${RESET} Python3.7"
	@echo -e "\t\t${BOLD}38${RESET} Python3.8"
	@echo -e "\t\t${BOLD}39${RESET} Python3.9"
	@echo -e "\t\t${BOLD}310${RESET} Python3.10"
	@echo
	@echo -e "\t${BOLD}<step>${RESET}:"
	@echo -e "\t\t${BOLD}env${RESET}"
	@echo -e "\t\t${BOLD}devel${RESET}"
	@echo -e "\t\t${BOLD}build${RESET}"
	@echo -e "\t\t${BOLD}test${RESET}"
	@echo -e "\t\t${BOLD}export${RESET}"
	@echo -e "\te.g. 'make python_amd64_manylinux_cp39_export'"
	@echo -e "\te.g. 'make python_arm64v8_alpine_export'"
	@echo
	@echo
	@echo -e "${BOLD}ARCHIVE${RESET}"
	@echo -e "\t${BOLD}<platform>_<stage>${RESET}: Build <stage> docker images for ALL DISTROS and ALL LANGUAGES."
	@echo -e "\t${BOLD}<target>${RESET}: Build the docker image for a specific platform,distro,lang,stage."
	@echo -e "\t${BOLD}save_<target>${RESET}: Save <stage> docker images for ALL DISTROS."
	@echo -e "\t${BOLD}sh_<target>${RESET}: Run a container using the docker image specified (debug purpose)."
	@echo -e "\t${BOLD}clean_<target>${RESET}: Clean the docker image specified."
	@echo
	@echo -e "\t${BOLD}clean${RESET}: Clean all docker images but keep archives (i.e. don't touch the export directory)."
	@echo -e "\t${BOLD}distclean${RESET}: Clean all docker images and remove all archives."
	@echo
	@echo -e "\t${BOLD}<target>${RESET}:"
	@echo -e "\t\t${BOLD}<platform>_<distro>_<stage>${RESET}"
	@echo
	@echo -e "\t${BOLD}<platform>${RESET}:"
	@echo -e "\t\t${BOLD}amd64${RESET}"
	@echo -e "\t\t${BOLD}arm64${RESET}"
	@echo -e "\t\t${BOLD}riscv64 (RISC-V 64bits, experimental)${RESET}"
	@echo
	@echo -e "\t${BOLD}<distro>${RESET}:"
	@echo -e "\t\t${BOLD}alpine-edge${RESET} (latest)"
	@echo -e "\t\t${BOLD}centos-8${RESET} (latest)"
	@echo -e "\t\t${BOLD}centos-7${RESET} (Centos 7 LTS)"
	@echo -e "\t\t${BOLD}debian-11${RESET} (bullseye, latest)"
	@echo -e "\t\t${BOLD}debian-10${RESET} (buster)"
	@echo -e "\t\t${BOLD}fedora-35${RESET} (latest)"
	@echo -e "\t\t${BOLD}fedora-34${RESET}"
	@echo -e "\t\t${BOLD}fedora-33${RESET}"
	@echo -e "\t\t${BOLD}opensuse-leap${RESET} (latest)"
	@echo -e "\t\t${BOLD}ubuntu-22.04${RESET} (Ubuntu 22.04 LTS, latest)"
	@echo -e "\t\t${BOLD}ubuntu-20.04${RESET} (Ubuntu 20.04 LTS)"
	@echo -e "\t\t${BOLD}ubuntu-18.04${RESET} (Ubuntu 18.04 LTS)"
	@echo
	@echo -e "\t${BOLD}<stage>${RESET}:"
	@echo -e "\t\t${BOLD}env${RESET}"
	@echo -e "\t\t${BOLD}devel${RESET}"
	@echo -e "\t\t${BOLD}<lang>_build${RESET}"
	@echo -e "\t\t${BOLD}<lang>_archive${RESET}"
	@echo -e "\t\t${BOLD}<lang>_export${RESET}"
	@echo -e "\t\t${BOLD}<lang>_test${RESET}"
	@echo
	@echo -e "\t${BOLD}<lang>${RESET}: Language to build"
	@echo -e "\t\t${BOLD}cpp${RESET} C++"
	@echo -e "\t\t${BOLD}java${RESET} Java (JDK 8.0) SWIG wrappers"
	@echo -e "\t\t${BOLD}dotnet${RESET} .Net Core 3.1 and .Net 5.0 SWIG wrappers"
	@echo
	@echo -e "\te.g. 'make sh_amd64_ubuntu-22.04_cpp_build'"
	@echo -e "\te.g. 'make amd64_ubuntu-22.04_cpp_archive'"
	@echo -e "\te.g. 'make amd64_ubuntu-22.04_cpp_test'"
	@echo
	@echo -e "\t${BOLD}NOCACHE=1${RESET}: use 'docker build --no-cache' when building container (default use cache)."
	@echo
	@echo -e "${BOLD}NOTES${RESET}"
	@echo -e "\tAll generated code will be located in the export/ folder, use target ${BOLD}distclean${RESET} to remove it."
	@echo

# Delete all implicit rules to speed up makefile
.SUFFIXES:
# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =
# keep all intermediate files e.g. export/docker_*.tar
# src: https://www.gnu.org/software/make/manual/html_node/Special-Targets.html
.SECONDARY:

OR_TOOLS_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
OR_TOOLS_SHA1 := $(shell git rev-parse --verify HEAD)
include ../../Version.txt
OR_TOOLS_PATCH := $(shell git rev-list --count HEAD)
OR_TOOLS_VERSION := ${OR_TOOLS_MAJOR}.${OR_TOOLS_MINOR}.${OR_TOOLS_PATCH}
ifdef PRE_RELEASE
OR_TOOLS_VERSION := ${OR_TOOLS_VERSION}-rc
endif
$(info branch: ${OR_TOOLS_BRANCH})
$(info SHA1: ${OR_TOOLS_SHA1})
$(info version: ${OR_TOOLS_VERSION})

# Docker image name prefix.
IMAGE := or-tools/docker

DOCKER_RUN_CMD := docker run --rm --init
ifdef NOCACHE
DOCKER_BUILD_CMD := docker build --no-cache
DOCKER_BUILDX_CMD := docker buildx build --no-cache
else
DOCKER_BUILD_CMD := docker build
DOCKER_BUILDX_CMD := docker buildx build
endif
#################
###  DELIVERY  ##
#################
.PHONY: delivery
delivery: python archives

.PHONY: test_delivery
test_delivery: test_archives

###############
###  PYTHON  ##
###############
# $* stem
# $< first prerequist
# $@ target name
PYTHON_PLATFORMS = amd64 arm64v8
PYTHON_DISTROS = manylinux alpine
PYTHON_STAGES = env devel build test

export:
	-mkdir $@

export/python: | export
	-mkdir $@

cache:
	-mkdir $@

cache/python: | cache
	-mkdir $@

## MANYLINUX ##
PYTHON_VERSIONS = 36 37 38 39 310

export/python/manylinux: | export/python
	-mkdir -p $@

export/python/manylinux/build-manylinux.sh: python/build-manylinux.sh | export/python/manylinux
	cp $< $@

define manylinux_inner =
#$$(info manylinux_inner:PLATFORM: '$1')
#$$(info manylinux_inner:VERSION: '$2')
#$$(info manylinux_inner:STAGE: '$3')

.PHONY: python_$1_manylinux_cp$2_$3
python_$1_manylinux_cp$2_$3: python/$1/manylinux.Dockerfile export/python/manylinux/build-manylinux.sh
	@docker image rm -f ${IMAGE}:$$@ 2>/dev/null
	${DOCKER_BUILD_CMD} \
 --tag ${IMAGE}:$$@ \
 --build-arg GIT_BRANCH=${OR_TOOLS_BRANCH} \
 --build-arg GIT_SHA1=${OR_TOOLS_SHA1} \
 --build-arg PYTHON_VERSION=$2 \
 --target=$3 \
 -f $$< \
 export/python/manylinux

.PHONY: save_python_$1_manylinux_cp$2_$3
save_python_$1_manylinux_cp$2_$3: cache/python/docker_$1_manylinux_cp$2_$3.tar
cache/python/docker_$1_manylinux_cp$2_$3.tar: python_$1_manylinux_cp$2_$3
	@rm -f $$@
	mkdir -p cache/python/
	docker save ${IMAGE}:$$< -o $$@

.PHONY: clean_python_$1_manylinux_cp$2_$3
clean_python_$1_manylinux_cp$2_$3: python/$1/manylinux.Dockerfile export/python/manylinux/build-manylinux.sh
	docker image rm -f ${IMAGE}:python_$1_manylinux_cp$2_$3 2>/dev/null
	rm -f cache/python/docker_$1_manylinux_cp$2_$3.tar

# Debug purpose
.PHONY: sh_python_$1_manylinux_cp$2_$3
sh_python_$1_manylinux_cp$2_$3: python_$1_manylinux_cp$2_$3
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$<
endef

define manylinux_outer =
#$$(info manylinux_outer:PLATFORM: '$1')
#$$(info manylinux_outer:VERSION: '$2')

$$(foreach stage,${PYTHON_STAGES},$$(eval $$(call manylinux_inner,$1,$2,$${stage})))

.PHONY: python_$1_manylinux_cp$2_export
python_$1_manylinux_cp$2_export: python_$1_manylinux_cp$2_build
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$< \
 "cp build*/python/dist/*.whl /export/python"
endef

$(foreach version,${PYTHON_VERSIONS},$(eval $(call manylinux_outer,amd64,${version})))
$(foreach version,${PYTHON_VERSIONS},$(eval $(call manylinux_outer,arm64v8,${version})))

# Merge
define manylinux_merge =
#$$(info manylinux_merge:PLATFORM: '$1')
#$$(info manylinux_merge:STAGE: '$2')

.PHONY: python_$1_manylinux_$2
python_$1_manylinux_$2: $(addprefix python_$1_manylinux_cp, $(addsuffix _$2, ${PYTHON_VERSIONS}))
.PHONY: save_python_$1_manylinux_$2
save_python_$1_manylinux_$2: $(addprefix save_python_$1_manylinux_cp, $(addsuffix _$2, ${PYTHON_VERSIONS}))
.PHONY: clean_python_$1_manylinux_$2
clean_python_$1_manylinux_$2: $(addprefix clean_python_$1_manylinux_cp, $(addsuffix _$2, ${PYTHON_VERSIONS}))
endef

$(foreach stage,${PYTHON_STAGES} export,$(eval $(call manylinux_merge,amd64,${stage})))
$(foreach stage,${PYTHON_STAGES} export,$(eval $(call manylinux_merge,arm64v8,${stage})))

## ALPINE ##
export/python/alpine: | export/python
	-mkdir -p $@

define alpine_loop =
#$$(info alpine_loop:PLATFORM: '$1')
#$$(info alpine_loop:STAGE: '$2')

.PHONY: python_$1_alpine_$2
python_$1_alpine_$2: python/$1/alpine.Dockerfile | export/python/alpine
	@docker image rm -f ${IMAGE}:$$@ 2>/dev/null
	${DOCKER_BUILD_CMD} \
 --tag ${IMAGE}:$$@ \
 --build-arg GIT_BRANCH=${OR_TOOLS_BRANCH} \
 --build-arg GIT_SHA1=${OR_TOOLS_SHA1} \
 --target=$2 \
 -f $$< \
 export/python/alpine

.PHONY: save_python_$1_alpine_$2
save_python_$1_alpine_$2: cache/python/docker_$1_alpine_$2.tar
cache/python/docker_$1_alpine_$2.tar: python_$1_alpine_$2 | cache/python
	@rm -f $$@
	docker save ${IMAGE}:$$< -o $$@

.PHONY: clean_python_$1_alpine_$2
clean_python_$1_alpine_$2: python/$1/alpine.Dockerfile | export/python/alpine
	docker image rm -f ${IMAGE}:python_$1_alpine_$2 2>/dev/null
	rm -f cache/python/docker_$1_alpine_$2.tar

# Debug purpose
.PHONY: sh_python_$1_alpine_$2
sh_python_$1_alpine_$2: python_$1_alpine_$2
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$<
endef

$(foreach stage,${PYTHON_STAGES},$(eval $(call alpine_loop,amd64,${stage})))
$(foreach stage,${PYTHON_STAGES},$(eval $(call alpine_loop,arm64v8,${stage})))

alpine_export_targets =  $(addprefix python_, $(addsuffix _alpine_export, ${PYTHON_PLATFORMS}))
.PHONY: ${alpine_export_targets}
${alpine_export_targets}: python_%_alpine_export: python_%_alpine_build | export
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$< \
 ${IMAGE}:$< \
 "cp build*/python/dist/*.whl /export/python"

## MERGE DISTRO ##
define distro_merge =
#$$(info distro_merge:PLATFORM: '$1')
#$$(info distro_merge:STAGE: '$2')

.PHONY: python_$1_$2
python_$1_$2: $(addprefix python_$1_, $(addsuffix _$2, ${PYTHON_DISTROS}))
.PHONY: save_python_$1_$2
save_python_$1_$2: $(addprefix save_python_$1_, $(addsuffix _$2, ${PYTHON_DISTROS}))
.PHONY: clean_python_$1_$2
clean_python_$1_$2: $(addprefix clean_python_$1_, $(addsuffix _$2, ${PYTHON_DISTROS}))
endef

$(foreach stage,${PYTHON_STAGES} export,$(eval $(call distro_merge,amd64,${stage})))
$(foreach stage,${PYTHON_STAGES} export,$(eval $(call distro_merge,arm64v8,${stage})))

## MERGE PLATFORM ##
define platform_merge =
#$$(info platform_merge:STAGE: '$1')

.PHONY: python_$1
python_$1: $(addprefix python_, $(addsuffix _$1, ${PYTHON_PLATFORMS}))
.PHONY: save_python_$1
save_python_$1: $(addprefix save_python_, $(addsuffix _$1, ${PYTHON_PLATFORMS}))
.PHONY: clean_python_$1
clean_python_$1: $(addprefix clean_python_, $(addsuffix _$1, ${PYTHON_PLATFORMS}))
endef

$(foreach stage,${PYTHON_STAGES} export,$(eval $(call platform_merge,${stage})))

# Alias
.PHONY: python_amd64
python_amd64: python_amd64_export

.PHONY: python_arm64v8
python_arm64v8: python_arm64v8_export

.PHONY: python
python: python_export

#################
###  ARCHIVES  ##
#################
# $* stem
# $< first prerequist
# $@ target name

export/%/or-tools.snk: or-tools.snk | export
	-mkdir -p export/$*
	cp $< $@

# generic rule export/% prevent other rules
# e.g. export/%/docker.devel.tar -> need an exhaustive list
export/archives: | export
	-mkdir $@

# Currently supported platform
PLATFORMS = amd64 arm64 riscv64

# Currently supported distro
DISTROS = \
 alpine-edge \
 centos-7 centos-8 \
 debian-10 debian-11 \
 fedora-33 fedora-34 fedora-35 \
 opensuse-leap \
 ubuntu-18.04 ubuntu-20.04 ubuntu-22.04

# List of stages
STAGES = env devel

define build_stage =
$$(info build_stage: PLATFORM: '$1')
$$(info build_stage: DISTRO: '$2')
$$(info build_stage: STAGE: '$3')
.PHONY: $1_$2_$3
$1_$2_$3: images/$2.Dockerfile | export/$1/$2/or-tools.snk
	#@docker image rm -f ${IMAGE}:$$@ 2>/dev/null
	${DOCKER_BUILDX_CMD} --platform linux/$1 \
 --tag ${IMAGE}:$$@ \
 --build-arg SRC_GIT_BRANCH=$(OR_TOOLS_BRANCH) \
 --build-arg SRC_GIT_SHA1=$(OR_TOOLS_SHA1) \
 --target=$3 \
 -f $$< \
 export/$1/$2

.PHONY: save_$1_$2_$3
save_$1_$2_$3: cache/$1/$2/docker_$3.tar
cache/$1/$2/docker_$3.tar: $1_$2_$3
	@rm -f $$@
	mkdir -p cache/$1/$2
	docker save ${IMAGE}:$$< -o $$@

.PHONY: sh_$1_$2_$3
sh_$1_$2_$3: $1_$2_$3 | export
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$<

.PHONY: clean_$1_$2_$3
clean_$1_$2_$3:
	docker image rm -f ${IMAGE}:$1_$2_$3 2>/dev/null
	rm -f cache/$1/$2/docker_$3.tar
endef

define build_distro =
$$(info build_distro: PLATFORM: '$1')
$$(info build_distro: DISTRO: '$2')
$$(foreach stage,${STAGES},$$(eval $$(call build_stage,$1,$2,$${stage})))
endef

define build_platform =
$$(info build_platform: PLATFORM: '$1')
$$(foreach distro,${DISTROS},$$(eval $$(call build_distro,$1,$${distro})))
.PHONY: python_$1_manylinux_cp$2_export
python_$1_manylinux_cp$2_export: python_$1_manylinux_cp$2_build
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$< \
 "cp build*/python/dist/*.whl /export/python"
endef

$(foreach platform,${PLATFORM},$(eval $(call build_platform,${platform})))

# List language dependent stages
LANGS = cc java dotnet
LANG_STAGES = build archive

define build_lang_stage =
$$(info build_lang_stage: PLATFORM: '$1')
$$(info build_lang_stage: DISTRO: '$2')
$$(info build_lang_stage: LANG: '$3')
$$(info build_lang_stage: STAGE: '$4')
.PHONY: $1_$2_$3_$4
$1_$2_$3_$4: images/$2.Dockerfile | export/$1/$2/or-tools.snk
	#@docker image rm -f ${IMAGE}:$$@ 2>/dev/null
	${DOCKER_BUILDX_CMD} --platform linux/$1 \
 --tag ${IMAGE}:$$@ \
 --build-arg SRC_GIT_BRANCH=$(OR_TOOLS_BRANCH) \
 --build-arg SRC_GIT_SHA1=$(OR_TOOLS_SHA1) \
 --build-arg BUILD_LANG=$3 \
 --target=$4 \
 -f $$< \
 export/$1/$2

.PHONY: save_$1_$2_$3_$4
save_$1_$2_$3_$4: cache/$1/$2/docker_$3_$4.tar
cache/$1/$2/docker_$3_$4.tar: $1_$2_$3_$4
	@rm -f $$@
	mkdir -p cache/$1/$2
	docker save ${IMAGE}:$$< -o $$@

.PHONY: sh_$1_$2_$3_$4
sh_$1_$2_$3_$4: $1_$2_$3_$4 | export
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_$$< \
 ${IMAGE}:$$<

.PHONY: clean_$1_$2_$3_$4
clean_$1_$2_$3_$4:
	docker image rm -f ${IMAGE}:$1_$2_$3_$4 2>/dev/null
	rm -f cache/$1/$2/docker_$3_$4.tar
endef

define build_lang_distro =
$$(info build_lang_distro: PLATFORM: '$1')
$$(info build_lang_distro: DISTRO: '$2')
$$(foreach stage,${LANG_STAGES},$$(eval $$(call build_lang_stage,$1,$2,cpp,$${stage})))
$$(foreach stage,${LANG_STAGES},$$(eval $$(call build_lang_stage,$1,$2,dotnet,$${stage})))
$$(foreach stage,${LANG_STAGES},$$(eval $$(call build_lang_stage,$1,$2,java,$${stage})))
endef

define build_lang_platform =
$$(info build_lang_platform: PLATFORM: '$1')
$$(foreach distro,${DISTROS},$$(eval $$(call build_lang_distro,$1,$${distro})))
endef

$(foreach platform,${PLATFORM},$(eval $(call build_lang_platform,${platform})))

# Special language dependent export target
define export_archive =
$$(info export_archive: PLATFORM: '$1')
$$(info export_archive: DISTRO: '$2')
$$(info build_lang_stage: LANG: '$3')
$1_$2_$3_export: export/archives/or-tools_$3_$2_$1_v$(OR_TOOLS_VERSION).tar.gz \

export/archives/or-tools_$3_$2_$1_v$(OR_TOOLS_VERSION).tar.gz: $1_$2_$3_archive | export/archives
	-rm -f export/archives/or-tools_$3_$2_$1_v*.tar.gz
	$(DOCKER_RUN_CMD) \
 -w /root/or-tools \
 -v `pwd`/export:/export \
 $(IMAGE):$1_$2_$3_archive \
 "cp build/$3/*.tar.gz /export/$1/$2"
	mv export/$1/$2/or-tools_*.tar.gz $$@
endef

define export_distro =
$$(info export_distro: PLATFORM: '$1')
$$(info export_distro: DISTRO: '$2')
$$(foreach lang,${LANGS},$$(eval $$(call export_archive,$1,$2,$${lang})))
endef

define export_platform =
$$(info export_platform: PLATFORM: '$1')
$$(foreach distro,${DISTROS},$$(eval $$(call export_distro,$1,$${distro})))
endef

$(foreach platform,${PLATFORM},$(eval $(call export_platform,${platform})))

## MERGE ##
define merge_stage =
$$(info merge_stage: PLATFORM: '$1')
$$(info merge_stage: STAGE: '$2')

.PHONY: $1_$2
$1_$2: $(addprefix $1_, $(addsuffix _2), ${DISTROS})
endef

define merge_platform =
$$(info merge_platform: PLATFORM: '$1')
$$(foreach stage,${STAGES},$$(eval $$(call merge_stage,$1,$${stage})))
$$(foreach stage,${LANG_STAGES},$$(eval $$(call merge_stage,$1,cc_$${stage})))
endef

$(foreach platform,${PLATFORM},$(eval $(call merge_platform,${platform})))

############
##  TEST  ##
############
LANGS = cc java dotnet

define make-test-target =
targets_$1 = $(addprefix amd64_, $(addsuffix _test_$1, $(DISTROS)))
.PHONY: amd64_test_$1
amd64_test_$1: $$(targets_$1)
.PHONY: $$(targets_$1)
$$(targets_$1): amd64_%_test_$1: test/%/$1.Dockerfile amd64_%_archive
	#@docker image rm -f $(IMAGE):amd64_$$*_test_$1 2>/dev/null
	$(DOCKER_BUILD_CMD) \
 --tag $(IMAGE):amd64_$$*_test_$1 \
 -f $$< \
 export/archives

save_targets_test_$1 = $(addprefix save_amd64_, $(addsuffix _test_$1, $(DISTROS)))
.PHONY: save_amd64_test_$1
save_amd64_test_$1: $$(save_targets_test_$1)
.PHONY: $$(save_targets_test_$1)
$$(save_targets_test_$1): save_amd64_%_test_$1: cache/amd64/%/docker_test_$1.tar
cache/amd64/%/docker_test_$1.tar: amd64_%_test_$1
	@rm -f $$@
	mkdir -p cache/amd64/$$*
	docker save ${IMAGE}:amd64_$$*_test_$1 -o $$@

sh_targets_$1 = $(addprefix sh_amd64_, $(addsuffix _test_$1, $(DISTROS)))
.PHONY: $$(sh_targets_$1)
$$(sh_targets_$1): sh_amd64_%_test_$1: %_$1
	${DOCKER_RUN_CMD} \
 -v `pwd`/export:/export \
 -it \
 --name ortools_amd64_$$*_$1 \
 ${IMAGE}:amd64_$$*_test_$1

clean_targets_$1 = $(addprefix clean_amd64_, $(addsuffix _test_$1, $(DISTROS)))
.PHONY: clean_amd64_$1
clean_amd64_$1: $$(clean_targets_$1)
.PHONY: $$(clean_targets_$1)
$$(clean_targets_$1): clean_amd64_%_test_$1:
	docker image rm -f ${IMAGE}:amd64_$$*_test_$1 2>/dev/null
	rm -f cache/amd64/$$*/docker_test_$1.tar
endef

$(foreach lang,$(LANGS),$(eval $(call make-test-target,$(lang))))

targets = $(addprefix amd64_, $(addsuffix _test, $(DISTROS)))
.PHONY: amd64_test
amd64_test: $(targets)
.PHONY: $(targets)
$(targets): amd64_%_test: $(addprefix amd64_%_test_, $(LANGS))

targets = $(addprefix clean_amd64_, $(addsuffix _test, $(DISTROS)))
.PHONY: clean_amd64_test
clean_amd64_test: $(targets)
.PHONY: $(targets)
$(targets): clean_amd64_%_test: $(addprefix clean_amd64_%_test_, $(LANGS))

## MERGE ##
.PHONY: test
test: amd64_test #arm64v8_test

#############
##  CLEAN  ##
#############
clean_targets = $(addprefix clean_, $(DISTROS))

.PHONY: $(clean_targets)
$(clean_targets): clean_%: $(addprefix clean_amd64_%_, $(STAGES)) clean_amd64_%_test
	-rmdir cache/$*
	-rm -f export/archives/*.tar.gz
	-rm -f export/$*/or-tools.snk
	-rmdir export/$*

.PHONY: clean_python
clean_python: $(addprefix clean_python_amd64_, $(PYTHON_STAGES)) $(addprefix clean_python_arm64v8_, $(PYTHON_STAGES))
	-rm -rf cache/python/*
	-rm -f export/python/*.whl
	-rm -f export/python/*.tar
	-rm -f export/python/*.sh
	-rmdir export/python

.PHONY: clean
clean: $(clean_targets) clean_python
	docker container prune -f
	docker image prune -f
	-rm -rf cache

.PHONY: distclean
distclean: clean | export/archives
	-docker container rm -f $$(docker container ls -f status=exited -q)
	-docker image rm -f $$(docker image ls --all -q)
	-rm -rf export/archives
	-rm -rf export

##########################
##  MINIZINC CHALLENGE  ##
##########################
MZN_TAG=or-tools-minizinc-challenge:2021v4

.PHONY: minizinc-challenge
minizinc-challenge: minizinc-challenge.Dockerfile
	${DOCKER_BUILD_CMD} -f minizinc-challenge.Dockerfile -t $(MZN_TAG) .

.PHONY: minizinc-challenge-test
minizinc-challenge-test: minizinc-challenge
	$(DOCKER_RUN_CMD) $(MZN_TAG) "solver /minizinc/test.mzn /minizinc/2.dzn"
	$(DOCKER_RUN_CMD) $(MZN_TAG) "solver --free-search /minizinc/test.mzn /minizinc/2.dzn"
	$(DOCKER_RUN_CMD) $(MZN_TAG) "solver -p 2 /minizinc/test.mzn /minizinc/2.dzn"

.PHONY: minizinc-challenge-bash
minizinc-challenge-bash:
	$(DOCKER_RUN_CMD) \
 -it \
 --name minizinc_chalenge \
 $(MZN_TAG)

.PHONY: minizinc-challenge-export
minizinc-challenge-export: minizinc-challenge
	docker tag $(MZN_TAG) laurentperron/$(MZN_TAG)
	docker push laurentperron/$(MZN_TAG)
