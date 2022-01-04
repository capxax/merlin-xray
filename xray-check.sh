#! /bin/sh
case "$(pidof xray | wc -w)" in
0)  echo "Restarting xray:     $(date)" >> /tmp/xraylog/Xray-status.log
    service stop_dnsmasq
    nohup /jffs/xray/xray --config=/jffs/xray/config.json >/dev/null 2>&1 &
    ;;
1)  # all ok
    ;;
*)  echo "Removed double xray: $(date)" >> /tmp/xraylog/xray-status.log
    kill $(pidof xray | awk '{print $1}')
    ;;
esac
