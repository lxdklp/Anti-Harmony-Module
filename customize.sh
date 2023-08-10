#!/sbin/sh
SKIPUNZIP=1
#接管安装

ui_print "项目官网:https://bluearchivecn.github.io/"
ui_print "反和谐仓库:https://github.com/BlueArchiveCN"
ui_print "本模块基于bilibili@小夏awaawa的反和谐文件制作,文件链接:https://github.com/BlueArchiveCN/Anti-Harmony"
ui_print "且本模块已在GitHub免费开源,开源链接:https://github.com/BlueArchiveCN/Anti-Harmony-Module"

echo "正在准备安装" > ${MODPATH}/install.log

#环境检测
ui_print "正在检测运行环境"
if [ $KSU = true ]
then
    ui_print "管理器:Kernel SU(Kernel SU模式为实验性功能,如有问题请在GitHub提issues)"
    ui_print "Kernel SU版本"
    ui_print $KSU_VER
    echo "Kernel SU" >> ${MODPATH}/install.log
else
    ui_print "管理器:Magisk"
    ui_print "Magisk版本"
    ui_print $MAGISK_VER
    echo "Magisk" >> ${MODPATH}/install.log
fi

echo "准备进行解压释放" >> ${MODPATH}/install.log

unzip -o "${ZIPFILE}" -x 'META-INF/*' -d ${MODPATH} >> ${MODPATH}/install.log 2>&1

echo "释放命令执行完成" >> ${MODPATH}/install.log

#官服安装
ui_print "正在准备安装"
if [ -d "/data/media/0/Android/data/com.RoamingStar.BlueArchive" ]; then
    ui_print "已检测到官服"
    cp ${MODPATH}/files/* /data/media/0/Android/data/com.RoamingStar.BlueArchive/files/AssetBundls
    echo "官服安装完成" >> ${MODPATH}/install.log
else
    ui_print "未检测到官服"
fi

#b服安装
if [ -d "/data/media/0/Android/data/com.RoamingStar.BlueArchive.bilibili" ]; then
    ui_print "已检测到b服"
    cp ${MODPATH}/files/* /data/media/0/Android/data/com.RoamingStar.BlueArchive.bilibili/files/AssetBundls
    echo "b服安装完成" >> ${MODPATH}/install.log
else
    ui_print "未检测到b服"
fi

ui_print "安装完成"
echo "安装完成" >> ${MODPATH}/install.log