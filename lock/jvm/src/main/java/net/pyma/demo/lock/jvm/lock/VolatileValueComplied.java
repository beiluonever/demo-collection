package net.pyma.demo.lock.jvm.lock;

/**
 * <p>
 * demo-collection
 * volatile compied code
 * </p>
 *
 * @author beiluo1994@gmail.com
 * @since 2019-12-26 16:22
 **/
public class VolatileValueComplied {

    private static volatile VolatileValueComplied instance;

    public static VolatileValueComplied getInstance() {
        if (instance == null) {
            instance = new VolatileValueComplied();
        }

        return instance;

    }

    /**
     *
     * jvm: -server -Xcomp -XX:+UnlockDiagnosticVMOptions -XX:+PrintAssembly -XX:CompileCommand=compileonly,*VolatileValueComplied.getInstance
     *
     *  0x0000000002d96a0c: lock add dword ptr [rsp],0h  ;*putstatic instance
     *                                                 ; - net.pyma.demo.lock.jvm.lock.VolatileValueComplied::getInstance@13 (line 18)
     *
     */
    public static void main(String[] args) {
        instance = getInstance();
    }

}
