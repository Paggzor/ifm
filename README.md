# ifm
* xmlrpx verkar bugga vid kompilering om det redan finns en byggd i staging.
  /usr/bin/ld: /home/axel/development/ifm/staging/local-debug/lib/libxmlrpc_util++.a(girerr.o): relocation R_X86_64_32 against `_ZN6girerr5errorD1Ev' can not be used when making a shared object; recompile with -fPIC

* buggar xmlrpc med paralell make? disablar tills vidare...