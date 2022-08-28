#!/usr/bin/env bash
LC_ALL=C

local_branch="$(git rev-parse --abbrev-ref HEAD)"

valid_branch_regex="^(issue|stable|release)\/\#[0-9]+\/[a-zA-Z_-]+$"
valid_default_branch_regex="^(default|master|trunk)$"
valid_release_branch_regex="^release\/[0-9].[0-9].[0-9]$"

[[ $local_branch =~ $valid_default_branch_regex ]] && exit 0
[[ $local_branch =~ $valid_release_branch_regex ]] && exit 0
[[ $local_branch =~ $valid_release_branch_regex ]] && exit 0

echo "Branch name does not conform to standards, one of: \n" \
       "$valid_default_branch_regex \n" \
       "$valid_branch_regex \n" \
       "$valid_release_branch_regex \n" \
       "For example \n" \
       "master \n" \
       "issue/#1/foo \n" \
       "stable/#1/foo-bar \n" \
       "release/1.2.3 \n"

exit 1
