.class public Lcom/nearme/game/sdk/common/util/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 107
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, v1

    goto :goto_19
.end method

.method public static exitGameProcess(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 47
    .line 1063
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->a(Landroid/content/Context;)Ljava/util/Iterator;

    move-result-object v2

    .line 1065
    if-eqz v2, :cond_2f

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1067
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1068
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1069
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1070
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 60
    :catch_2d
    move-exception v0

    :goto_2e
    return-void

    .line 48
    :cond_2f
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_38

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    if-eqz v0, :cond_3c

    .line 53
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3c

    .line 56
    :cond_52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_2d

    goto :goto_2e
.end method

.method public static exitSdkPluginProcess(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 1089
    const/4 v1, 0x0

    .line 1090
    :try_start_1
    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->a(Landroid/content/Context;)Ljava/util/Iterator;

    move-result-object v2

    .line 1091
    if-eqz v2, :cond_3c

    .line 1092
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1093
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1094
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1095
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":gcsdk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1096
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 80
    :goto_34
    if-eqz v0, :cond_39

    .line 81
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    .line 86
    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception v0

    goto :goto_39

    :cond_3c
    move v0, v1

    goto :goto_34
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Lcom/nearme/game/sdk/common/util/AppUtil;->a(Landroid/content/Context;)Ljava/util/Iterator;

    move-result-object v2

    .line 21
    if-eqz v2, :cond_1e

    .line 22
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 24
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 25
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 30
    :goto_1d
    return-object v0

    :cond_1e
    move-object v0, v1

    goto :goto_1d
.end method

.method public static getPPid(I)I
    .registers 7

    .prologue
    .line 34
    const/4 v1, -0x1

    .line 35
    const-class v0, Landroid/os/Process;

    .line 37
    :try_start_3
    const-string v2, "getParentPid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_27

    move-result v0

    .line 42
    :goto_26
    return v0

    .line 40
    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_26
.end method
