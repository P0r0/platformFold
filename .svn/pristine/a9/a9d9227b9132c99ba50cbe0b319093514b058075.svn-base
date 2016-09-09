.class public Lmobisocial/omlib/service/util/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;,
        Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;,
        Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    }
.end annotation


# static fields
.field private static provider:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 116
    sget-object v0, Lmobisocial/omlib/service/util/ConfigHelper;->provider:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    if-eqz v0, :cond_7

    .line 117
    sget-object v0, Lmobisocial/omlib/service/util/ConfigHelper;->provider:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    .line 119
    :goto_6
    return-object v0

    .line 118
    :cond_7
    new-instance v0, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmobisocial/omlib/service/util/ConfigHelper;->getReflectiveProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    move-result-object v1

    new-instance v2, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmobisocial/omlib/service/util/ConfigHelper$ManifestConfigProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lmobisocial/omlib/service/util/ConfigHelper$ChainingProvider;-><init>(Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;)V

    sput-object v0, Lmobisocial/omlib/service/util/ConfigHelper;->provider:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    .line 119
    sget-object v0, Lmobisocial/omlib/service/util/ConfigHelper;->provider:Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;

    goto :goto_6
.end method

.method static getReflectiveProvider(Landroid/content/Context;)Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 60
    :try_start_1
    const-string v3, "mobisocial.omlet.integration.Config"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_20

    move-result-object v0

    .line 65
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    :try_start_8
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 66
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_23

    .line 74
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1f
    return-object v3

    .line 61
    :catch_20
    move-exception v2

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 62
    goto :goto_1f

    .line 67
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_23
    move-exception v3

    .line 70
    const/4 v3, 0x0

    :try_start_25
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 71
    .restart local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/omlib/service/util/ConfigHelper$ConfigProvider;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    goto :goto_1f

    .line 72
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_35
    move-exception v3

    move-object v3, v4

    .line 74
    goto :goto_1f
.end method
