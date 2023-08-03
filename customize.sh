# This is customize the module installation process if you need

#sudo cp -f $MODDIR/files/* /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/
ui_print "本模块基于bilibili@小夏awaawa的反和谐文件制作,文件开源链接:https://github.com/yemoyu123/bluearchiveChinaServerAnti-Harmony"
ui_print "且本模块已在GitHub免费开源,开源链接:https://github.com/lxdklp/bluearchiveChinaServerAnti-Harmony_magisk"
ui_print "正在准备安装"
if [ ! -f "/data/adb/modules/ba_cn_unlocker/check" ];then
    ui_print "你好像是第一次安装呢,本次安装结束后请重启并再次安装本模块"
    else
    mkdir /data/adb/modules/ba_cn_unlocker/backup
    cp /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/* /data/adb/modules/ba_cn_unlocker/backup
    cp -f /data/adb/modules/ba_cn_unlocker/files/* /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/
    ui_print "安装完成"
fi