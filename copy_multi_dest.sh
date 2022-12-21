#!/usr/bin/env bash
for directory in *; do
	[ -d "$directory" ] && cp ./{hosts,playbook.yml,Vagrantfile} "$directory";
done
