ui_print "反和谐仓库:https://github.com/BlueArchiveCN"
ui_print "本模块基于bilibili@小夏awaawa的反和谐文件制作,文件链接:https://github.com/BlueArchiveCN/Anti-Harmony"
ui_print "且本模块已在GitHub免费开源,开源链接:https://github.com/BlueArchiveCN/Anti-Harmony-Module"
ui_print "正在检测运行环境"
if [ $KSU = true ]
then
    ui_print "管理器:ksu(ksu模式未经过验证,如有问题请在GitHub提issues)"
    ui_print "ksu版本"
    ui_print $KSU_VER
else
    ui_print "管理器:magisk"
    ui_print "magisk版本"
    ui_print $MAGISK_VER
fi

ui_print "正在准备安装"
if [ ! -f "/data/adb/modules/ba_cn_unlocker/check" ];then
    ui_print "你好像是第一次安装呢"
    ui_print "文件释放中"
    ui_print "请重启并再次安装本模块"
    else
    if [ ! -f "/data/adb/modules/ba_cn_unlocker/v2" ];then
        ui_print "你似乎曾经安装过1.x版本,请重启后再次安装"
        else
        ui_print "正在备份原文件"
        mkdir /data/adb/modules/ba_cn_unlocker/backup
        cp /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/* /data/adb/modules/ba_cn_unlocker/backup
        ui_print "正在替换"
        cp -f /data/adb/modules/ba_cn_unlocker/files/* /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls/
        ui_print "安装完成"
        fi
fi