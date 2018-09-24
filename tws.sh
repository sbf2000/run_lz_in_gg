 
#!/bin/sh 
#===================== 
#YuanHui.HE 
#khler@163.com 
#===================== 
while : 
do 
echo "Current DIR is " $PWD 
stillRunning=$(ps -ef |grep "$PWD/autogtp" |grep -v "grep") 
if [ "$stillRunning" ] ; then 
echo "TWS service was already started by another way" 
echo "Kill it and then startup by this shell, other wise this shell will loop out this message annoyingly" 
pkill -9 $pidof $PWD/autogtp 
else 
echo "TWS service was not started" 
echo "Starting service ..." 
$PWD/autogtp -g 8 
echo "TWS service was exited!" 
fi 
sleep 10 
done 
