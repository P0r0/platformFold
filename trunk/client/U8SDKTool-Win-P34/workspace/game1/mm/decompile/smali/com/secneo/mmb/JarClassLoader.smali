.class public Lcom/secneo/mmb/JarClassLoader;
.super Ldalvik/system/DexClassLoader;
.source "JarClassLoader.java"


# instance fields
.field private findClassMth:Ljava/lang/reflect/Method;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mPaths:[Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private rsc_mth:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 7
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 14
    iput-object v1, p0, Lcom/secneo/mmb/JarClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/secneo/mmb/JarClassLoader;->path:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/secneo/mmb/JarClassLoader;->mPaths:[Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/secneo/mmb/JarClassLoader;->findClassMth:Ljava/lang/reflect/Method;

    .line 24
    invoke-direct {p0, p4, p0}, Lcom/secneo/mmb/JarClassLoader;->setParent(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    .line 25
    return-void
.end method

.method private getFindClassMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "mth":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    if-nez v0, :cond_20

    if-eqz p1, :cond_20

    .line 105
    :try_start_5
    const-string v1, "findClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_21

    .line 110
    :goto_17
    if-nez v0, :cond_1

    .line 112
    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1e

    move-result-object p1

    goto :goto_1

    .line 113
    :catch_1e
    move-exception v1

    goto :goto_1

    .line 117
    :cond_20
    return-object v0

    .line 107
    :catch_21
    move-exception v1

    goto :goto_17
.end method

.method private getFindResourceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7
    .param p1, "clz"    # Ljava/lang/Class;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "mth":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    .line 53
    :try_start_5
    const-string v1, "findResource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_19

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_23

    .line 60
    :cond_19
    :goto_19
    if-nez v0, :cond_1

    .line 62
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_20

    move-result-object p1

    goto :goto_1

    .line 64
    :catch_20
    move-exception v1

    goto :goto_1

    .line 68
    :cond_22
    return-object v0

    .line 57
    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method private setParent(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "c1"    # Ljava/lang/ClassLoader;
    .param p2, "c2"    # Ljava/lang/ClassLoader;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    .local v0, "clz":Ljava/lang/Class;
    :cond_5
    :goto_5
    if-nez v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 32
    :try_start_9
    const-string v2, "parent"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_22

    .line 35
    :goto_13
    if-nez v1, :cond_5

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    .line 40
    :cond_1a
    if-eqz v1, :cond_1f

    .line 42
    :try_start_1c
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_20

    .line 45
    :cond_1f
    :goto_1f
    return-void

    .line 43
    :catch_20
    move-exception v2

    goto :goto_1f

    .line 34
    :catch_22
    move-exception v2

    goto :goto_13
.end method


# virtual methods
.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v3, p0, Lcom/secneo/mmb/JarClassLoader;->rsc_mth:Ljava/lang/reflect/Method;

    if-nez v3, :cond_10

    .line 75
    :try_start_4
    iget-object v3, p0, Lcom/secneo/mmb/JarClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/secneo/mmb/JarClassLoader;->getFindResourceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/secneo/mmb/JarClassLoader;->rsc_mth:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_2a

    .line 81
    :cond_10
    :goto_10
    const/4 v2, 0x0

    .line 83
    .local v2, "ret":Ljava/net/URL;
    :try_start_11
    iget-object v3, p0, Lcom/secneo/mmb/JarClassLoader;->rsc_mth:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/secneo/mmb/JarClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/URL;

    move-object v2, v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_31

    .line 87
    :goto_23
    if-nez v2, :cond_29

    .line 88
    invoke-super {p0, p1}, Ldalvik/system/DexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 91
    :cond_29
    return-object v2

    .line 77
    .end local v2    # "ret":Ljava/net/URL;
    :catch_2a
    move-exception v1

    .line 78
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_10

    .line 84
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "ret":Ljava/net/URL;
    :catch_31
    move-exception v1

    .line 85
    .restart local v1    # "ex":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_23
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .param p1, "resName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/secneo/mmb/JarClassLoader;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
