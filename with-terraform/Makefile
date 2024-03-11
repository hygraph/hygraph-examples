#!/usr/bin/env -- make -f
########################################

TF		:= $(command -v terraform)
TFLINT		:= $(command -v tflint)
TF_OPTS		:= 
TFLINT_OPTS	:= 

########################################
.DEFAULT: help
PHONY: all help fmt init plan apply

help: ## Show this help
    @egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

deps: init          ## install plugins and providers

all: deps fmt plan  ## install dependancies then format and execute 'terraform plan'

lint: fmt	    ## format hcl files and run the linter
	$(TFLINT) $(TFLINT_OPTS) .

init fmt plan apply: ## default rule to execute terrafrom sub commands
	$(TF) $(TF_OPTS) $@
