#!/usr/bin/env bash

set -x


# some options:
# [--disable-rollback | --no-disable-rollback]
# [--rollback-configuration <value>]
# [--timeout-in-minutes <value>]
# [--notification-arns <value>]
# [--capabilities <value>]
# [--resource-types <value>]
# [--role-arn <value>]
# [--on-failure <value>]
# [--stack-policy-body <value>]
# [--stack-policy-url <value>]
# [--tags <value>]
# [--client-request-token <value>]
# [--enable-termination-protection | --no-enable-termination-protection]
# [--cli-input-json <value>]
# [--generate-cli-skeleton <value>]

#remember to have a role that is able to access cloud formation and the resources defined inside the template

TEMPLATE_FILE="0-sample-template.yaml"
INPUT_JSON=""
# we create the cloudformation template
aws cloudformation create-stack --stack-name example-cli-stack --template-body file://${TEMPLATE_FILE} --parameters file://${INPUT_JSON} --profile cf-course --region us-east-1


