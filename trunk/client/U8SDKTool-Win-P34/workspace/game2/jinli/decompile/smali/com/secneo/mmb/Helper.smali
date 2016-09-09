.class public Lcom/secneo/mmb/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static CPU_ABI:Ljava/lang/String;

.field public static PPATH:Ljava/lang/String;

.field public static cl:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/secneo/mmb/Helper;->PPATH:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native attach(Landroid/app/Application;Landroid/content/Context;)V
.end method

.method public static getCPUABI()Ljava/lang/String;
    .registers 7

    .prologue
    .line 57
    sget-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;

    if-nez v5, :cond_3a

    .line 59
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "getprop ro.product.cpu.abi"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 61
    .local v4, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 63
    .local v3, "ir":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v2, "input":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "abi":Ljava/lang/String;
    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 67
    const-string v5, "x86"

    sput-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_34

    .line 75
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :goto_2c
    sget-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;

    .line 77
    :goto_2e
    return-object v5

    .line 69
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "ir":Ljava/io/InputStreamReader;
    :cond_2f
    :try_start_2f
    const-string v5, "arm"

    sput-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_34

    goto :goto_2c

    .line 72
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "ir":Ljava/io/InputStreamReader;
    :catch_34
    move-exception v1

    .line 73
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "arm"

    sput-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;

    goto :goto_2c

    .line 77
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v4    # "process":Ljava/lang/Process;
    :cond_3a
    sget-object v5, Lcom/secneo/mmb/Helper;->CPU_ABI:Ljava/lang/String;

    goto :goto_2e
.end method

.method public static getRelease()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_9

    .line 85
    const-string v0, "2.2"

    .line 87
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "4.0"

    goto :goto_8
.end method

.method public static install(Landroid/app/Application;)V
    .registers 6
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "libpath":Ljava/lang/String;
    :try_start_1
    const-string v2, "DexHelper_mmb"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/secneo/mmb/Helper;->PPATH:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33
    sget-object v2, Lcom/secneo/mmb/Helper;->PPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_f} :catch_5b

    .line 37
    :cond_f
    :goto_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .local v1, "sdk":I
    const/16 v2, 0x9

    if-lt v1, v2, :cond_3d

    .line 40
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 52
    :goto_1b
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.cache/mmbclasses.jar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/secneo/mmb/DexInstall;->install(Landroid/content/Context;Ljava/io/File;)V

    .line 54
    return-void

    .line 42
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 35
    .end local v1    # "sdk":I
    :catch_5b
    move-exception v2

    goto :goto_f
.end method

.method public static installApplicationEx(Ljava/lang/String;)V
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/secneo/mmb/Helper;

    invoke-static {p0, v0}, Lcom/secneo/mmb/Helper;->installApplicationEx(Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public static native installApplicationEx(Ljava/lang/String;Ljava/lang/Class;)V
.end method
