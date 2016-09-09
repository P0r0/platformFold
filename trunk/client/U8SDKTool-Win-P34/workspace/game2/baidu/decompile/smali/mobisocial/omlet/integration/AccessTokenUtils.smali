.class public Lmobisocial/omlet/integration/AccessTokenUtils;
.super Ljava/lang/Object;
.source "AccessTokenUtils.java"


# static fields
.field public static final SSO_BDGAME_TYPE:Ljava/lang/String; = "bdgamesdk"

.field static final TAG:Ljava/lang/String; = "AccessTokenUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchBaiduToken()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 82
    :try_start_1
    const-string v5, "com.baidu.gamesdk.BDGameSDK"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "bdGameSdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getLoginAccessToken"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "getLoginAccessToken":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    .local v3, "tokenRes":Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1a} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1a} :catch_37
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1a} :catch_40

    .line 97
    .end local v2    # "getLoginAccessToken":Ljava/lang/reflect/Method;
    .end local v3    # "tokenRes":Ljava/lang/Object;
    :goto_1a
    return-object v3

    .line 86
    :catch_1b
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not available"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_23
    move-object v3, v4

    .line 97
    goto :goto_1a

    .line 88
    :catch_25
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not compatible"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 90
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2e
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not valid"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 92
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_37
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK fail"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 94
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_40
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK invalid result"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public static getSsoToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {}, Lmobisocial/omlet/integration/AccessTokenUtils;->fetchBaiduToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSsoType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string v0, "bdgamesdk"

    return-object v0
.end method

.method public static removeToken(Landroid/content/Context;)V
    .registers 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 31
    return-void
.end method

.method public static renewToken(Ljava/lang/Runnable;)V
    .registers 10
    .param p0, "successCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    :try_start_0
    const-string v5, "com.baidu.gamesdk.IResponse"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 36
    .local v2, "iResponse":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-instance v7, Lmobisocial/omlet/integration/AccessTokenUtils$1;

    invoke-direct {v7, p0}, Lmobisocial/omlet/integration/AccessTokenUtils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "instance":Ljava/lang/Object;
    const-string v5, "com.baidu.gamesdk.BDGameSDK"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "bdGameSdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "login"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-string v8, "com.baidu.gamesdk.IResponse"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 66
    .local v4, "login":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_3b} :catch_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3b} :catch_4e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3b} :catch_57
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3b} :catch_60

    .line 78
    .end local v0    # "bdGameSdkClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "iResponse":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v4    # "login":Ljava/lang/reflect/Method;
    :goto_3b
    return-void

    .line 67
    :catch_3c
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not available"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 69
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_45
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not compatible"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 71
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4e
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK not valid"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 73
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_57
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK fail"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 75
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_60
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "AccessTokenUtils"

    const-string v6, "Baidu SDK invalid result"

    invoke-static {v5, v6, v1}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method
