#!/usr/bin/env bash
# new Env("bili测试ck")
# cron 0 8 * * * bili_task_test.sh

dir_shell=$QL_DIR/shell
. $dir_shell/share.sh

bili_repo="raywangqvq_bilibilitoolpro"

echo "repo目录: $dir_repo"
bili_repo_dir="$(find $dir_repo -type d -name $bili_repo | head -1)"
echo -e "bili仓库目录: $bili_repo_dir\n"

cd $bili_repo_dir
dotnet run --project ./src/Ray.BiliBiliTool.Console --ENVIRONMENT=Production --runTasks=Test
