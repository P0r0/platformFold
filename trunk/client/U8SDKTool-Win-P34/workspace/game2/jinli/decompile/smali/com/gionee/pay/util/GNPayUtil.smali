.class public Lcom/gionee/pay/util/GNPayUtil;
.super Ljava/lang/Object;
.source "GNPayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/pay/util/GNPayUtil$GNIconTooLargeException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GNPayUtil"

.field private static sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;


# instance fields
.field private gnPay:Lcom/gionee/pay/gsp/IGnPay;

.field private lock:Ljava/lang/Integer;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/gionee/pay/util/GNPayUtil;

    invoke-direct {v0}, Lcom/gionee/pay/util/GNPayUtil;-><init>()V

    sput-object v0, Lcom/gionee/pay/util/GNPayUtil;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;

    .line 53
    new-instance v0, Lcom/gionee/pay/util/GNPayUtil$1;

    invoke-direct {v0, p0}, Lcom/gionee/pay/util/GNPayUtil$1;-><init>(Lcom/gionee/pay/util/GNPayUtil;)V

    iput-object v0, p0, Lcom/gionee/pay/util/GNPayUtil;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/gionee/pay/util/GNPayUtil;)Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil;->lock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gionee/pay/util/GNPayUtil;Lcom/gionee/pay/gsp/IGnPay;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/gionee/pay/util/GNPayUtil;->gnPay:Lcom/gionee/pay/gsp/IGnPay;

    return-void
.end method

.method static synthetic access$2(Lcom/gionee/pay/util/GNPayUtil;)Lcom/gionee/pay/gsp/IGnPay;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/gionee/pay/util/GNPayUtil;->gnPay:Lcom/gionee/pay/gsp/IGnPay;

    return-object v0
.end method

.method private bindAccount(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    const-string v8, "---\u5f00\u59cb\u7ed1\u5b9a\u652f\u4ed8"

    invoke-static {v8}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 154
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/gionee/pay/gsp/IGnPay;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "implicitIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 158
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v10, :cond_23

    .line 175
    :cond_22
    :goto_22
    return-void

    .line 162
    :cond_23
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 163
    .local v7, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 164
    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 168
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v2, "iapIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/gionee/pay/util/GNPayUtil;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v8, v2, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_22
.end method

.method public static getInstance()Lcom/gionee/pay/util/GNPayUtil;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/gionee/pay/util/GNPayUtil;->sGNPayUtil:Lcom/gionee/pay/util/GNPayUtil;

    return-object v0
.end method


# virtual methods
.method public bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 70
    if-nez p1, :cond_4

    .line 79
    :goto_3
    return-object v2

    .line 73
    :cond_4
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_3

    .line 76
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_15
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p4, "type"    # I
    .param p5, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/gionee/pay/util/GNPayUtil;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p4, "type"    # I
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "bundlePara"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const-string v0, "GNPayUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---pay---orderInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_14
    invoke-direct {p0, p1}, Lcom/gionee/pay/util/GNPayUtil;->bindAccount(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_2b

    .line 91
    :goto_17
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/gionee/pay/util/GNPayUtil$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move-object v4, p6

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/gionee/pay/util/GNPayUtil$2;-><init>(Lcom/gionee/pay/util/GNPayUtil;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/gionee/pay/gsp/PayCallback;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 143
    return-void

    .line 87
    :catch_2b
    move-exception v7

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
