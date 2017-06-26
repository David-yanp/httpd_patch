mod_cache.la: mod_cache.slo cache_storage.slo cache_util.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_cache.lo cache_storage.lo cache_util.lo  $(MOD_CACHE_LDADD)
mod_disk_cache.la: mod_disk_cache.slo
	$(SH_LINK) -rpath $(libexecdir) -module -avoid-version  mod_disk_cache.lo $(MOD_DISK_CACHE_LDADD)
DISTCLEAN_TARGETS = modules.mk
static = 
shared =  mod_cache.la mod_disk_cache.la
