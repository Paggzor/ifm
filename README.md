# ifm
* xmlrpx verkar bugga vid kompilering om det redan finns en byggd i staging.
  /usr/bin/ld: /home/axel/development/ifm/staging/local-debug/lib/libxmlrpc_util++.a(girerr.o): relocation R_X86_64_32 against `_ZN6girerr5errorD1Ev' can not be used when making a shared object; recompile with -fPIC

* buggar xmlrpc med paralell make? disablar tills vidare...

* Drar in några extra boost deps som behövdes

* libpcl 1.7.1 funkar inte med eigen 3.3.2, verkar dock funka med eigen 3.2.10

* Buggar pcl med paralell make? Ibland ser det ut att bli fork-bomb av cc1plus processer
   - Kan vara out-of-memory bug där. prövar lite minre paralellt där

* PCL drar in boost, som beror på pthread. Vid statisk länkning dras static pthread in
/usr/bin/cmake -E cmake_link_script CMakeFiles/pcl_convert_pcd_ascii_binary.dir/link.txt --verbose=1
/usr/bin/c++   -Wall -Wextra -Wno-unknown-pragmas -fno-strict-aliasing -Wno-format-extra-args -Wno-sign-compare -Wno-invalid-offsetof -Wno-conversion  -march=native -msse4.2 -mfpmath=sse -Wabi -Wl,-Bdynamic -pthread -fopenmp -g    -Wl,--as-needed CMakeFiles/pcl_convert_pcd_ascii_binary.dir/convert_pcd_ascii_binary.cpp.o  -o ../../bin/pcl_convert_pcd_ascii_binary -rdynamic -Wl,-Bstatic -lboost_system -lboost_filesystem -lboost_thread -lboost_date_time -lboost_iostreams -lpthread -Wl,-Bdynamic -lpthread -lm ../../lib/libpcl_common.a ../../lib/libpcl_io.a ../../lib/libpcl_common.a ../../lib/libpcl_io_ply.a -Wl,-Bstatic -lboost_system -lboost_filesystem -lboost_thread -lboost_date_time -lboost_iostreams -lpthread -Wl,-Bdynamic -lm -Wl,-Bstatic -lpng -Wl,-Bdynamic 

Tar man bort alla "-pthread" som är efter forcerad static så funkar det. Men är det värt besväret?
Ska PCL användas på target?

* PCL är en drake och verkar ha glömt bort libflanns include-dir. Fulpatchade det
i libo3d3xx istället...

Notes övrigt:
Bör vi vergen använda image modulen som en lågnivåkälla då den drar in så mkt depencencies??
PCL kan vara kul, men vill man dra in det bara för att få in bilder?
