log_date=`date +%Y%m%d%H%M%S`
etl_id=${1}
ps -ef | grep 'kitchen' | grep "${etl_id}" > check.stage
frecs=`wc -l check.stage | cut -f1 -d' ' `
if [ $frecs == 0 ]
then
        nohup load_analysis_stage.sh $etl_id > load_stage_${etl_id}_${log_date}.log 2>&1 &
else
        echo "Load to stage for etl id ${etl_id} is already running"
fi