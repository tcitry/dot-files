#
# tuxingsun.net
#
function start_tuproxy {
    export http_proxy='bee.0.6180339.in:29619'
    export HTTPS_PROXY='bee.0.6180339.in:29619'
}

function stop_tuproxy {
    export http_proxy=
    export HTTPS_PROXY=
}
