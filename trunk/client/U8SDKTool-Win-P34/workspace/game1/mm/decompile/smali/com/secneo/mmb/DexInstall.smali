.class public Lcom/secneo/mmb/DexInstall;
.super Ljava/lang/Object;
.source "DexInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/secneo/mmb/DexInstall$V19;,
        Lcom/secneo/mmb/DexInstall$V14;,
        Lcom/secneo/mmb/DexInstall$V4;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/secneo/mmb/DexInstall;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/secneo/mmb/DexInstall;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/secneo/mmb/DexInstall;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    invoke-static {p0, p1}, Lcom/secneo/mmb/DexInstall;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 120
    .local v1, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 121
    .local v2, "original":[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    array-length v4, v2

    array-length v5, p2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 123
    .local v0, "combined":[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v3, v2

    array-length v4, p2

    invoke-static {p2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 80
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 83
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_15

    .line 87
    :cond_14
    return-object v1

    .line 88
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_15
    move-exception v2

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 92
    :cond_1b
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 99
    :try_start_6
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 103
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    .line 106
    :cond_14
    return-object v1

    .line 107
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_15
    move-exception v2

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 112
    :cond_1b
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 49
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v2

    .line 53
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_d

    if-nez v2, :cond_10

    .line 59
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_d
    return-object v0

    .line 50
    :catch_e
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_d

    .line 57
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 59
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_d
.end method

.method public static install(Landroid/content/Context;Ljava/io/File;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dex"    # Ljava/io/File;

    .prologue
    .line 25
    const-string v5, "sdk"

    const-string v6, "DexInstall begin"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :try_start_7
    invoke-static {p0}, Lcom/secneo/mmb/DexInstall;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_2f

    move-result-object v0

    .line 30
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_2f

    move-result-object v4

    .line 34
    .local v4, "loader":Ljava/lang/ClassLoader;
    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v5, "sdk"

    const-string v6, "DexInstall 11111"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/secneo/mmb/DexInstall;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    .line 38
    const-string v5, "sdk"

    const-string v6, "DexInstall 22222"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_2f

    .line 42
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :goto_2c
    return-void

    .line 31
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2d
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_2c

    .line 39
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2f
    move-exception v2

    .line 40
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2c
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v0, "sdk"

    const-string v1, "installSecondarDexs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_17

    .line 68
    # invokes: Lcom/secneo/mmb/DexInstall$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p0, p2, p1}, Lcom/secneo/mmb/DexInstall$V19;->access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 75
    :cond_16
    :goto_16
    return-void

    .line 69
    :cond_17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    .line 70
    # invokes: Lcom/secneo/mmb/DexInstall$V14;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    invoke-static {p0, p2, p1}, Lcom/secneo/mmb/DexInstall$V14;->access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_16

    .line 72
    :cond_21
    # invokes: Lcom/secneo/mmb/DexInstall$V4;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V
    invoke-static {p0, p2}, Lcom/secneo/mmb/DexInstall$V4;->access$200(Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_16
.end method
