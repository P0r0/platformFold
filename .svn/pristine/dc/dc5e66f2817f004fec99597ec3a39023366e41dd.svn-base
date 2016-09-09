.class public Lcom/baidu/bdgame/sdk/obf/nt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/nu;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->b:Landroid/app/NotificationManager;

    .line 36
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 140
    return-void
.end method

.method public a(JLandroid/app/Notification;)V
    .registers 7

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->b:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 135
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 119
    invoke-static {p1}, Lcom/duoku/platform/download/utils/AppUtil;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public a(Ljava/lang/Thread;)V
    .registers 2

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public b()Ljava/lang/Integer;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    if-nez v0, :cond_16

    .line 51
    const-string v0, "DownloadManager"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 68
    :goto_15
    return-object v0

    .line 56
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 59
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_15

    :cond_2b
    move-object v0, v1

    .line 68
    goto :goto_15
.end method

.method public c()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    if-nez v0, :cond_16

    .line 79
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_15
    return v3

    .line 83
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_37

    move v1, v2

    .line 85
    :goto_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    if-eqz v1, :cond_39

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_35
    move v3, v2

    .line 90
    goto :goto_15

    :cond_37
    move v1, v3

    .line 84
    goto :goto_23

    :cond_39
    move v2, v3

    .line 86
    goto :goto_35
.end method

.method public d()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    const-string v1, "download_manager_max_bytes_over_mobile"

    .line 98
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 101
    :goto_10
    return-object v0

    .line 100
    :catch_11
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public e()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    const-string v1, "download_manager_recommended_max_bytes_over_mobile"

    .line 108
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 112
    :goto_10
    return-object v0

    .line 111
    :catch_11
    move-exception v0

    .line 112
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public f()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/nt;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 145
    return-void
.end method
