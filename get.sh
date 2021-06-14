while true
do
        date1=$(date +%s%N)
        php /var/www/html/sprint/yii hello/validate
        wait
        diff=$(echo "($(date +%s%N) - $date1)/1000000" | bc -l)
        echo "That took $diff milliseconds."
        time sleep $(echo "1.2 - ($diff)/1000" | bc -l)
done
