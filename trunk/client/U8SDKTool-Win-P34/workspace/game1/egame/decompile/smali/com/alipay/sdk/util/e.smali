.class public Lcom/alipay/sdk/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/util/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "failed"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:Lcom/alipay/sdk/util/e$a;

.field private g:Landroid/content/ServiceConnection;

.field private h:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/alipay/sdk/util/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/f;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 164
    new-instance v0, Lcom/alipay/sdk/util/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/util/g;-><init>(Lcom/alipay/sdk/util/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 45
    iput-object p1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 98
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 102
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_17
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_7f

    if-nez v0, :cond_29

    .line 105
    :try_start_1b
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/data/a;->b()Lcom/alipay/sdk/data/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/data/a;->a()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_29} :catch_183
    .catchall {:try_start_1b .. :try_end_29} :catchall_7f

    .line 107
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_7f

    .line 113
    :try_start_2a
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_118

    .line 117
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/i;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 118
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    :goto_45
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_82

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_82

    move v1, v2

    :goto_5e
    if-eqz v1, :cond_7b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_7b} :catch_ae
    .catchall {:try_start_2a .. :try_end_7b} :catchall_160

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_45

    .line 107
    :catchall_7f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_82
    move v1, v3

    .line 118
    goto :goto_5e

    :cond_84
    :try_start_84
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "theme"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.google."

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.android."

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_ad} :catch_ae
    .catchall {:try_start_84 .. :try_end_ad} :catchall_160

    goto :goto_7b

    .line 138
    :catch_ae
    move-exception v0

    .line 140
    :try_start_af
    const-string v1, "biz"

    const-string v2, "ClientBindException"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    const-string v0, "failed"
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_160

    .line 144
    :try_start_b8
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bf} :catch_17c

    .line 148
    :goto_bf
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 149
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 150
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 151
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_d0

    .line 152
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    iput-boolean v3, p0, Lcom/alipay/sdk/util/e;->e:Z

    .line 157
    :cond_d0
    :goto_d0
    return-object v0

    .line 118
    :cond_d1
    :try_start_d1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "biz"

    const-string v2, "ClientBindFailed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "failed"
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_ff} :catch_ae
    .catchall {:try_start_d1 .. :try_end_ff} :catchall_160

    .line 144
    :try_start_ff
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_106} :catch_181

    .line 148
    :goto_106
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 149
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 150
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 151
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_d0

    .line 152
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    iput-boolean v3, p0, Lcom/alipay/sdk/util/e;->e:Z

    goto :goto_d0

    .line 125
    :cond_118
    :try_start_118
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    if-eqz v0, :cond_121

    .line 126
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->f:Lcom/alipay/sdk/util/e$a;

    invoke-interface {v0}, Lcom/alipay/sdk/util/e$a;->a()V

    .line 130
    :cond_121
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_132

    .line 131
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/util/e;->e:Z

    .line 135
    :cond_132
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_146} :catch_ae
    .catchall {:try_start_118 .. :try_end_146} :catchall_160

    .line 144
    :try_start_146
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_14d} :catch_17f

    .line 148
    :goto_14d
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 149
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 150
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 151
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_d0

    .line 152
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    iput-boolean v3, p0, Lcom/alipay/sdk/util/e;->e:Z

    goto/16 :goto_d0

    .line 143
    :catchall_160
    move-exception v0

    .line 144
    :try_start_161
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_168} :catch_17a

    .line 148
    :goto_168
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->h:Lcom/alipay/android/app/IRemoteServiceCallback;

    .line 149
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->g:Landroid/content/ServiceConnection;

    .line 150
    iput-object v10, p0, Lcom/alipay/sdk/util/e;->c:Lcom/alipay/android/app/IAlixPay;

    .line 151
    iget-boolean v1, p0, Lcom/alipay/sdk/util/e;->e:Z

    if-eqz v1, :cond_179

    .line 152
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 153
    iput-boolean v3, p0, Lcom/alipay/sdk/util/e;->e:Z

    :cond_179
    throw v0

    :catch_17a
    move-exception v1

    goto :goto_168

    :catch_17c
    move-exception v1

    goto/16 :goto_bf

    :catch_17f
    move-exception v1

    goto :goto_14d

    :catch_181
    move-exception v1

    goto :goto_106

    :catch_183
    move-exception v0

    goto/16 :goto_29
.end method

.method static synthetic b(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/i$a;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_24

    .line 70
    iget-object v1, v0, Lcom/alipay/sdk/util/i$a;->a:[B

    invoke-static {v1}, Lcom/alipay/sdk/util/i;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_24

    const-string v2, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 72
    const-string v0, "biz"

    const-string v2, "ClientSignError"

    invoke-static {v0, v2, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "failed"

    .line 94
    :goto_23
    return-object v0

    .line 77
    :cond_24
    iget v0, v0, Lcom/alipay/sdk/util/i$a;->b:I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_59

    const/16 v1, 0x4e

    if-le v0, v1, :cond_40

    .line 79
    :try_start_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_40} :catch_54

    .line 91
    :cond_40
    :goto_40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 84
    :catch_54
    move-exception v0

    :try_start_55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_40

    .line 88
    :catch_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_40
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/util/e;->b:Landroid/app/Activity;

    .line 162
    return-void
.end method
