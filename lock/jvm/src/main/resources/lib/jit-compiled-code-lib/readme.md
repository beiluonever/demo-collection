The DLL can now be installed by copying it from 
hsdis\build\Linux-amd64 or hsdis\build\Linux-i586 to your JRE's bin\server or bin\client directory. 



You can run with the following JVM options:

-XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly

Filter on a specific method
You can also filter on a specific method with the following syntax:

-server -Xcomp -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:CompileCommand=compileonly,*VolatileValueComplied
-XX:+UnlockDiagnosticVMOptions -XX:CompileCommand=print,*MyClass.myMethod