sync {
    default.rsync,
    source    = "/home/xyz/src",
    host="replica.example.com",
    targetdir="/remote/xyz/src",
    delay     = 15, 
    rsync     = {
	times = true,
	update = true,
	archive = true,
	perms = true,
	owner = true,
	checksum = true,
	compress = true
    }
}
