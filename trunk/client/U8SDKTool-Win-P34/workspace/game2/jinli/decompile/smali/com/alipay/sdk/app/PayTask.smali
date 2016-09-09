.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/sdk/util/PayHelper;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/alipay/sdk/util/FileDownloader;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const-class v0, Lcom/alipay/sdk/app/PayTask;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Lcom/alipay/sdk/app/PayTask$4;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$4;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Ljava/lang/Runnable;

    .line 389
    new-instance v0, Lcom/alipay/sdk/app/PayTask$5;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$5;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->l:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    .line 73
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Landroid/os/Handler;

    .line 74
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/MspConfig;->b()Lcom/alipay/sdk/data/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/sdk/data/MspConfig;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    const-string v1, "bizcontext="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 113
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Lcom/alipay/sdk/util/PayHelper;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Lcom/alipay/sdk/util/PayHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bizcontext=\"{\"appkey\":\"2014052600006128\"}\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/util/PayHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 166
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 171
    array-length v1, v5

    if-le v1, v2, :cond_81

    aget-object v1, v5, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    .line 172
    aget-object v1, v5, v2

    invoke-static {v1, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v4

    .line 176
    :goto_20
    array-length v1, v5

    if-le v1, v3, :cond_7f

    aget-object v1, v5, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 177
    aget-object v0, v5, v3

    invoke-static {v0, p1}, Lcom/alipay/sdk/protocol/ElementAction;->a(Ljava/lang/String;Lcom/alipay/sdk/protocol/ActionType;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v0

    move-object v6, v0

    .line 180
    :goto_36
    const/4 v0, 0x0

    aget-object v1, v5, v0

    const/4 v0, 0x1

    aget-object v2, v5, v0

    const/4 v0, 0x2

    aget-object v3, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;)V

    .line 182
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_49
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4e} :catch_58
    .catchall {:try_start_49 .. :try_end_4e} :catchall_5d

    .line 188
    :goto_4e
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_5d

    .line 190
    iget-boolean v0, p0, Lcom/alipay/sdk/app/PayTask;->i:Z

    if-eqz v0, :cond_60

    .line 191
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_57
    :goto_57
    return-object v0

    .line 185
    :catch_58
    move-exception v0

    .line 186
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4e

    .line 188
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    throw v0

    .line 193
    :cond_60
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 195
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    :cond_7f
    move-object v6, v0

    goto :goto_36

    :cond_81
    move-object v4, v0

    goto :goto_20
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a([Lcom/alipay/sdk/protocol/ActionType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;[Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 16

    .prologue
    .line 206
    iget-object v8, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/app/PayTask$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/sdk/app/PayTask$1;-><init>(Lcom/alipay/sdk/app/PayTask;[Lcom/alipay/sdk/protocol/ActionType;[Lcom/alipay/sdk/protocol/ActionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method private a([Lcom/alipay/sdk/protocol/ActionType;)V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 274
    array-length v3, p1

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_4a

    aget-object v0, p1, v1

    .line 275
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->c:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v0, v4, :cond_1a

    .line 276
    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 277
    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/alipay/sdk/app/PayTask;->h:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    .line 280
    :cond_1a
    sget-object v4, Lcom/alipay/sdk/protocol/ActionType;->h:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v0, v4, :cond_3e

    .line 281
    sget-object v4, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 282
    :try_start_21
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v5

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-static {v5, v0, v6}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/Result;->a(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_47

    .line 287
    :try_start_38
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_42
    .catchall {:try_start_38 .. :try_end_3d} :catchall_47

    .line 291
    :goto_3d
    :try_start_3d
    monitor-exit v4

    .line 274
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 288
    :catch_42
    move-exception v0

    .line 289
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_3d

    .line 291
    :catchall_47
    move-exception v0

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_47

    throw v0

    .line 294
    :cond_4a
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;Z)Z
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/alipay/sdk/app/PayTask;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/PayTask;)Lcom/alipay/sdk/util/FileDownloader;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/temp.apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v0}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/sdk/data/FrameUtils;->a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/sdk/data/Request;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/alipay/sdk/net/RequestWrapper;

    new-instance v0, Lcom/alipay/sdk/data/InteractionData;

    invoke-direct {v0}, Lcom/alipay/sdk/data/InteractionData;-><init>()V

    invoke-direct {v3, v0}, Lcom/alipay/sdk/net/RequestWrapper;-><init>(Lcom/alipay/sdk/data/InteractionData;)V

    .line 126
    const/4 v0, 0x0

    .line 128
    :try_start_3c
    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/alipay/sdk/protocol/FrameData;->d()Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    const-string v3, "form"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "onload"

    invoke-static {v2, v3}, Lcom/alipay/sdk/protocol/ElementAction;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/ElementAction;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/alipay/sdk/protocol/ActionType;->a(Lcom/alipay/sdk/protocol/ElementAction;)[Lcom/alipay/sdk/protocol/ActionType;

    move-result-object v3

    .line 133
    array-length v4, v3

    move v2, v1

    :goto_59
    if-ge v2, v4, :cond_6b

    aget-object v5, v3, v2

    .line 134
    sget-object v6, Lcom/alipay/sdk/protocol/ActionType;->g:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v5, v6, :cond_68

    .line 135
    invoke-virtual {v5}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/util/ActionUtil;->b(Ljava/lang/String;)V

    .line 133
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 138
    :cond_6b
    array-length v2, v3

    :goto_6c
    if-ge v1, v2, :cond_99

    aget-object v4, v3, v1

    .line 139
    sget-object v5, Lcom/alipay/sdk/protocol/ActionType;->a:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v4, v5, :cond_79

    .line 140
    invoke-direct {p0, v4}, Lcom/alipay/sdk/app/PayTask;->b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_78
    return-object v0

    .line 142
    :cond_79
    sget-object v5, Lcom/alipay/sdk/protocol/ActionType;->b:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v4, v5, :cond_86

    .line 143
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Lcom/alipay/sdk/util/PayHelper;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/PayHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 145
    :cond_86
    sget-object v5, Lcom/alipay/sdk/protocol/ActionType;->e:Lcom/alipay/sdk/protocol/ActionType;

    if-ne v4, v5, :cond_8f

    .line 146
    invoke-direct {p0, v4}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    :try_end_8d
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_3c .. :try_end_8d} :catch_92
    .catch Lcom/alipay/sdk/exception/FailOperatingException; {:try_start_3c .. :try_end_8d} :catch_b4
    .catch Lcom/alipay/sdk/exception/AppErrorException; {:try_start_3c .. :try_end_8d} :catch_b2
    .catch Lcom/alipay/sdk/exception/UnZipException; {:try_start_3c .. :try_end_8d} :catch_b0

    move-result-object v0

    goto :goto_78

    .line 138
    :cond_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 150
    :catch_92
    move-exception v0

    .line 151
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->d:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 157
    :cond_99
    :goto_99
    if-nez v0, :cond_a1

    .line 158
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->b:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 160
    :cond_a1
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 154
    :catch_b0
    move-exception v1

    goto :goto_99

    .line 153
    :catch_b2
    move-exception v1

    goto :goto_99

    .line 152
    :catch_b4
    move-exception v1

    goto :goto_99
.end method

.method private b(Lcom/alipay/sdk/protocol/ActionType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 239
    const-string v0, ""

    .line 240
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 243
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 244
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 247
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 248
    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_2c
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 254
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_37
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3c} :catch_5c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_61

    .line 260
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_61

    .line 262
    invoke-static {}, Lcom/alipay/sdk/app/Result;->a()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 264
    sget-object v0, Lcom/alipay/sdk/app/ResultStatus;->c:Lcom/alipay/sdk/app/ResultStatus;

    invoke-static {v0}, Lcom/alipay/sdk/app/ResultStatus;->a(Lcom/alipay/sdk/app/ResultStatus;)Lcom/alipay/sdk/app/ResultStatus;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/ResultStatus;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/Result;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    :cond_5b
    return-object v0

    .line 257
    :catch_5c
    move-exception v0

    .line 258
    :try_start_5d
    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_3c

    .line 260
    :catchall_61
    move-exception v0

    monitor-exit v1
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v0
.end method

.method static synthetic c(Lcom/alipay/sdk/app/PayTask;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->l:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 297
    new-instance v0, Lcom/alipay/sdk/widget/Loading;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/widget/Loading;-><init>(Landroid/app/Activity;)V

    .line 298
    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d"

    const/4 v2, 0x1

    new-instance v3, Lcom/alipay/sdk/app/PayTask$2;

    invoke-direct {v3, p0, v0}, Lcom/alipay/sdk/app/PayTask$2;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/sdk/widget/Loading;->a(Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 321
    new-instance v1, Lcom/alipay/sdk/util/FileDownloader;

    invoke-direct {v1}, Lcom/alipay/sdk/util/FileDownloader;-><init>()V

    iput-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    .line 322
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->b(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    new-instance v2, Lcom/alipay/sdk/app/PayTask$3;

    invoke-direct {v2, p0, v0}, Lcom/alipay/sdk/app/PayTask$3;-><init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/widget/Loading;)V

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/util/FileDownloader;->a(Lcom/alipay/sdk/util/FileDownloader$IDownloadProgress;)V

    .line 343
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Lcom/alipay/sdk/util/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/sdk/util/FileDownloader;->b()V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->k:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 411
    new-instance v0, Lcom/alipay/sdk/app/PayTask$6;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask$6;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    .line 464
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method

.method static synthetic e(Lcom/alipay/sdk/app/PayTask;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->d()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->c()V

    return-void
.end method

.method static synthetic h(Lcom/alipay/sdk/app/PayTask;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/sdk/app/PayTask;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkAccountIfExist()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Lcom/alipay/sdk/data/FrameUtils;->a()Lcom/alipay/sdk/data/Request;

    move-result-object v1

    .line 101
    :try_start_5
    new-instance v2, Lcom/alipay/sdk/net/RequestWrapper;

    invoke-direct {v2}, Lcom/alipay/sdk/net/RequestWrapper;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/sdk/net/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/sdk/data/Request;Z)Lcom/alipay/sdk/protocol/FrameData;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/alipay/sdk/protocol/FrameData;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hasAccount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move-result v0

    .line 105
    :goto_1c
    return v0

    .line 104
    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "9.1.0"

    return-object v0
.end method

.method public pay(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 78
    new-instance v0, Lcom/alipay/sdk/util/PayHelper;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/util/PayHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Lcom/alipay/sdk/util/PayHelper;

    .line 79
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->c:Ljava/lang/String;

    .line 81
    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_17
    return-object v0

    .line 85
    :cond_18
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/Utils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 86
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 88
    :cond_25
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
