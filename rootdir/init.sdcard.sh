#!/vendor/bin/sh

shutdown=`getprop sys.shutdown.requested`
startup=`getprop sys.early-boot`

case "$shutdown" in
    "1" )
    mv /data/system/storage.xml /data/system/storage.xml.backup
    ;;
esac

case "$startup" in
    "1" )
    rm -rf /data/system/storage.xml
    mv /data/system/storage.xml.backup /data/system/storage.xml
    ;;
esac
