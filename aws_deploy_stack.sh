#!/usr/bin/env bash

usage () {
    cat<<-EOF
aws_deploy_stack (-t|--template) <template file> (-s|--stackname) <stack name> [(-p|-params|--parameters) <parameters_file>] [(-a|--tags) <tags file>] [(-d|--dryrun)] [(-h|--help)]
    REQUIRED PARAMETERS:
        (-t|--template) <template file> - template file to deploy
        (-s|--stackname) <stack name> - name to use for the CFN stack
    OPTIONAL PARAMETERS:
        (-p|--params|--parameters) <parameters file> - template parameters
        (-a|--tags) <tags file> - CFN stack tags
        (-d|dryrun) - Generate the aws cloudformation deploy command but do not execute it 
        (-h|--help) - Display this help
EOF
}

while (( $# ));
do
    case "${1}" in
        -t|--template)              shift; TEMPLATE_FILE=$1;;
        -p|--params|--parameters)   shift; PARAMETERS_FILE=$1;;
        -a|--tags)                  shift; TAGS_FILE=$1;;
        -d|--dryrun)                DRY_RUN=true;;
        -s|--stackname)             shift; STACK_NAME=$1;;
        -h|--help)                  usage; exit 0;;
        --)                         break;; #end parsing
        *)                          echo "Unknown option '${1}'"; exit 1;;
    esac
    shift
done    

cat <<-EOF
=====================
PARAMETERS:
template:   ${TEMPLATE_FILE:-Not Set}
stackname:  ${STACK_NAME:-Not Set}
parameters: ${PARAMETERS_FILE:-Not Set}
tags:       ${TAGS_FILE:-Not Set}
dryrun:     ${DRY_RUN:-false}
=====================
EOF
