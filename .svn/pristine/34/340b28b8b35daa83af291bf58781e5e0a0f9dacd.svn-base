.class public Lcom/baidu/sapi2/utils/c;
.super Ljava/lang/Object;
.source "SapiDeviceInfo.java"


# static fields
.field private static final a:I = 0x4

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String; = "android"

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/utils/c;->b:Ljava/lang/String;

    .line 29
    const-string v0, ""

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "O"

    aput-object v3, v1, v2

    const-string v2, "a"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "L"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "h"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "z"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "O"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "K"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "T"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Q"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "G"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "L"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "w"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "h"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "P"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/utils/c;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method static a(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "situation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v0, v4, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    .line 55
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v4, "6.14.7"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {}, Lcom/baidu/sapi2/utils/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcom/baidu/sapi2/utils/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v4, "android"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v4, ","

    invoke-static {}, Lcom/baidu/sapi2/utils/c;->c()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    if-eqz p0, :cond_bb

    .end local p0    # "situation":Ljava/lang/String;
    :goto_6b
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    .line 69
    .local v2, "session":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v2, :cond_be

    iget-object v4, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    :goto_89
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->v()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "rootStatus":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 73
    invoke-static {}, Lcom/baidu/sapi2/utils/SapiUtils;->isRoot()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/sapi2/b;->e(Ljava/lang/String;)V

    .line 77
    :cond_b0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->getWifiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v3

    .line 66
    .end local v1    # "rootStatus":Ljava/lang/String;
    .end local v2    # "session":Lcom/baidu/sapi2/SapiAccount;
    .restart local p0    # "situation":Ljava/lang/String;
    :cond_bb
    const-string p0, ""

    goto :goto_6b

    .line 69
    .end local p0    # "situation":Ljava/lang/String;
    .restart local v2    # "session":Lcom/baidu/sapi2/SapiAccount;
    :cond_be
    const-string v4, ""

    goto :goto_89
.end method

.method static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "situation"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    sget-object v6, Lcom/baidu/sapi2/utils/c;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/sapi2/utils/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "plain":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/sapi2/utils/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "iv":Ljava/lang/String;
    new-instance v6, Lcom/baidu/sapi2/utils/a;

    invoke-direct {v6}, Lcom/baidu/sapi2/utils/a;-><init>()V

    sget-object v7, Lcom/baidu/sapi2/utils/c;->d:Ljava/lang/String;

    invoke-virtual {v6, v5, v4, v7}, Lcom/baidu/sapi2/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/baidu/sapi2/utils/d$a;->b([B)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "encryptInfo":Ljava/lang/String;
    const-string v6, "_"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    const-string v9, "check"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "check":Ljava/lang/String;
    const-string v6, "_"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_51} :catch_53

    move-result-object v6

    .line 103
    .end local v0    # "bytes":[B
    .end local v1    # "check":Ljava/lang/String;
    .end local v3    # "encryptInfo":Ljava/lang/String;
    .end local v4    # "iv":Ljava/lang/String;
    .end local v5    # "plain":Ljava/lang/String;
    :goto_52
    return-object v6

    .line 100
    :catch_53
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .line 103
    const-string v6, ""

    goto :goto_52
.end method

.method static c()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "shareAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/sapi2/SapiAccount;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, "shareUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 47
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v4, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 49
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    :cond_23
    return-object v3
.end method

.method static d()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%02d"

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%03d"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
