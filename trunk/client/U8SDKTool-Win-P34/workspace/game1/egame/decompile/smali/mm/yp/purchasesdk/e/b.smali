.class public Lmm/yp/purchasesdk/e/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Lmm/yp/purchasesdk/e/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/b;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_14

    const-string v3, "unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    if-eqz v2, :cond_1e

    const-string v1, "unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static f()Ljava/lang/String;
    .registers 6

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
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_19} :catch_3b

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1c
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.ril-impl"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2e} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2e} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2e} :catch_4d

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e
.end method

.method private static g()Ljava/lang/String;
    .registers 6

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
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_19} :catch_3b

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1c
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.baseband"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unknown"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2e} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2e} :catch_47
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2e} :catch_4d

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2e
.end method
