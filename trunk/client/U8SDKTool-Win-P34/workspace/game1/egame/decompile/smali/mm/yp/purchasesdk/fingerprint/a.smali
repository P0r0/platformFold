.class public Lmm/yp/purchasesdk/fingerprint/a;
.super Ljava/lang/Object;


# static fields
.field public static c:Ljava/lang/Boolean;

.field private static status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/fingerprint/a;->c:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput v0, Lmm/yp/purchasesdk/fingerprint/a;->status:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmm/yp/purchasesdk/fingerprint/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->init(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->getLastError()I

    move-result v0

    sput v0, Lmm/yp/purchasesdk/fingerprint/a;->status:I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_19} :catch_37

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1c
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2a} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2a} :catch_49

    :goto_2a
    return-object v0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2a
.end method

.method private static d()Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const-string v0, "ro.product.cpu.abi"

    invoke-static {v0, v3}, Lmm/yp/purchasesdk/fingerprint/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ro.product.cpu.abi2"

    invoke-static {v0, v3}, Lmm/yp/purchasesdk/fingerprint/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez v4, :cond_13

    :goto_12
    return-object v3

    :cond_13
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    move v1, v0

    :goto_28
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object v3, v4

    goto :goto_12

    :cond_5c
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x1

    :goto_80
    move v1, v0

    goto :goto_28

    :cond_82
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    if-eqz v1, :cond_8a

    move-object v0, v2

    :goto_88
    move-object v3, v0

    goto :goto_12

    :cond_8a
    move-object v0, v3

    goto :goto_88

    :cond_8c
    move v0, v1

    goto :goto_80
.end method

.method public static init()V
    .registers 2

    :try_start_0
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lmm/yp/purchasesdk/fingerprint/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->init(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-static {}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->getLastError()I

    move-result v0

    sput v0, Lmm/yp/purchasesdk/fingerprint/a;->status:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11
.end method
