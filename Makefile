##############################################################################
# Copyright (c) 2015 Huajie IMI Technology Co., Ltd.
# All rights reserved.
# @File Name     : Makefile
# @Author        : Megavolt
# @Date          : 2015-05-08
# @Description   : Makefile for building subdirs 
# @Version       : 0.1
# @History       :
##############################################################################


################################################
## Standard rules for building subdirs
################################################

.PHONY:: all 
MAKE := make

#SUBDIRS = iminect imisensor Examples

all::$(SUBDIRS)
	@for f in $^; do (cd $$f&&$(MAKE) --file=Makefile&&cd -)||exit; done

clean::$(SUBDIRS)
	@for f in $^; do (cd $$f&&$(MAKE) --file=Makefile clean&&cd -)||exit; done
