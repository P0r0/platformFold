.class public abstract Lcom/gionee/gsp/GnCommplatform;
.super Ljava/lang/Object;
.source "GnCommplatform.java"

# interfaces
.implements Lcom/gionee/gsp/service/pay/IPay;
.implements Lcom/gionee/gsp/service/account/IAccount;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v6, Lcom/gionee/gsp/GnCommplatform;

    monitor-enter v6

    :try_start_3
    const-string v1, "com.gionee.gsp.service.GnCommplatformImpl"

    .line 36
    .local v1, "className":Ljava/lang/String;
    const-string v3, "getInstance"

    .line 37
    .local v3, "methodName":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v4, v5

    .line 38
    .local v4, "parameterTypes":[Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v0, v5
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 40
    .local v0, "args":[Ljava/lang/Object;
    :try_start_15
    invoke-static {v1, v3, v4, v0}, Lcom/gionee/gsp/util/GnReflectionTools;->getStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gionee/gsp/GnCommplatform;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_1d
    .catchall {:try_start_15 .. :try_end_1b} :catchall_29

    monitor-exit v6

    return-object v5

    .line 41
    :catch_1d
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "\u627e\u4e0d\u5230\u7c7b\u6216\u8005\u65b9\u6cd5com.gionee.gsp.service.GnCommplatformImpl.getInstance(context)"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_29

    .line 35
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "parameterTypes":[Ljava/lang/Class;
    :catchall_29
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public abstract checkLocalEnvironment(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setFloatingBoxOriginPosition(Lcom/gionee/gsp/GnEFloatingBoxPositionModel;)V
.end method
