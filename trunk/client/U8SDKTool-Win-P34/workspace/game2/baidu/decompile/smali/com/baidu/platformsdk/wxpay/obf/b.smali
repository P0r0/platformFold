.class public Lcom/baidu/platformsdk/wxpay/obf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/wxpay/obf/b$1;,
        Lcom/baidu/platformsdk/wxpay/obf/b$b;,
        Lcom/baidu/platformsdk/wxpay/obf/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bdpwxpayplugin.apk"

.field private static final d:Ljava/lang/String; = "com.baidu.plaformsdk"

.field private static final e:Ljava/lang/String; = "wxpay"


# instance fields
.field b:Ljava/net/Proxy;

.field c:Landroid/content/Context;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/16 v0, 0x2710

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->f:I

    .line 43
    iput v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->g:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->b:Ljava/net/Proxy;

    .line 48
    iput-object p1, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->c:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/baidu/platformsdk/wxpay/obf/b;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->f:I

    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/platformsdk/wxpay/obf/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.baidu.plaformsdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 66
    :cond_2b
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "wxpay"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_56

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 70
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bdpwxpayplugin.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/platformsdk/wxpay/obf/b;)I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->g:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {}, Lcom/baidu/platformsdk/wxpay/obf/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 53
    new-instance v0, Lcom/baidu/platformsdk/wxpay/obf/b$a;

    iget-object v2, p0, Lcom/baidu/platformsdk/wxpay/obf/b;->c:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platformsdk/wxpay/obf/b$a;-><init>(Lcom/baidu/platformsdk/wxpay/obf/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/platformsdk/wxpay/IPayCallback;)V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1d

    .line 55
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platformsdk/wxpay/obf/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    :goto_1c
    return-void

    .line 57
    :cond_1d
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/wxpay/obf/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1c
.end method
