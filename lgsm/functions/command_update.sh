#!/bin/bash
# LinuxGSM command_update.sh function
# Author: Daniel Gibbs
# Website: https://linuxgsm.com
# Description: Handles updating of servers.

local commandname="UPDATE"
local commandaction="Update"
local function_selfname="$(basename "$(readlink -f "${BASH_SOURCE[0]}")")"

fn_print_dots ""
check.sh
logs.sh

if [ "${shortname}" == "ts3" ]; then
	update_ts3.sh
elif [ "${shortname}" == "mc" ]; then
	update_minecraft.sh
elif [ "${shortname}" == "mumble" ]; then
	update_mumble.sh
elif [ "${shortname}" == "fctr" ]; then
	update_factorio.sh
elif [ "${shortname}" == "mta" ]; then
	update_mta.sh
#elif [ "${gamename}" == "ARMA 3" ]; then
#	update_arma.sh
else
	update_steamcmd.sh
fi

core_exit.sh
