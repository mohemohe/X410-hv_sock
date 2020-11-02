.PHONY: install uninstall

install:
	mkdir -p /opt/bin
	cp -f startx /opt/bin/
	chmod a+x /opt/bin/startx

	cp -f hv_sock.conf /etc/modules-load.d/
	modprobe hv_sock

	cp -f x410vsock.service /etc/systemd/system/
	cp -f x410tty.service /etc/systemd/system/
	cp -f x410.sh /etc/profile.d/
	cp -f x410 /etc/default/

	systemctl daemon-reload
	systemctl enable --now x410vsock
	systemctl enable --now x410tty

uninstall:
	systemctl disable --now x410tty
	systemctl disable --now x410vsock

	rm -f /opt/bin/startx
	rm -f /etc/modules-load.d/hv_sock.conf
	rm -f /etc/profile.d/x410.sh
	rm -f /etc/default/x410
	rm -f /etc/systemd/system/x410vsock.service
	rm -f /etc/systemd/system/x410tty.service
	
	systemctl daemon-reload
