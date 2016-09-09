.class public Lcom/vivo/upgrade/utils/Reflact;
.super Ljava/lang/Object;
.source "Reflact.java"


# static fields
.field private static final ROM20:Ljava/lang/String; = "rom_2.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 24
    .local v1, "id":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 30
    :goto_d
    return v1

    .line 26
    :catch_e
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static varargs getObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    return-object v0
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v3, p1

    .line 66
    .local v3, "value":Ljava/lang/String;
    :try_start_2
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 67
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_2f

    .line 72
    :goto_25
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    .line 73
    :cond_2d
    move-object v3, p1

    .line 75
    :cond_2e
    return-object v3

    .line 68
    :catch_2f
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public static isDebug()Z
    .registers 2

    .prologue
    .line 79
    const-string v0, "persist.sys.log.ctrl"

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/Reflact;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRom20()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "mRomProperty1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 46
    .local v2, "mRomProperty2":Ljava/lang/String;
    :try_start_4
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 47
    const-string v7, "get"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    .line 46
    invoke-static {v4, v7, v8}, Lcom/vivo/upgrade/utils/Reflact;->getObjectMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 48
    .local v3, "mSystemPropertiesGetMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.vivo.rom"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "@><@"

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 49
    const/4 v4, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.vivo.rom.version"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "@><@"

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_49} :catch_5d

    .line 53
    .end local v3    # "mSystemPropertiesGetMethod":Ljava/lang/reflect/Method;
    :goto_49
    const-string v4, "rom_2.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string v4, "rom_2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_59
    move v4, v6

    .line 57
    :goto_5a
    return v4

    :cond_5b
    move v4, v5

    goto :goto_5a

    .line 50
    :catch_5d
    move-exception v4

    goto :goto_49
.end method
