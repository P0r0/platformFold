.class public final Lcom/baidu/android/pushservice/i/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/baidu/android/pushservice/i/u;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/baidu/android/pushservice/i/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/u;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/android/pushservice/i/u;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/u;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/s;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/android/pushservice/i/s;)Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/android/pushservice/i/s;->d()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v2, "stats"

    invoke-virtual {v5, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pbVer"

    invoke-virtual {v5, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    const-string v3, "android"

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v2, -0x1

    move v4, v0

    :goto_1b
    const/4 v6, 0x6

    if-ge v4, v6, :cond_30

    :try_start_1e
    const-string v2, "POST"

    invoke-static {p1, v2, v5}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v2

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;

    move-result-object v3

    if-nez v2, :cond_30

    if-eqz v3, :cond_41

    :cond_30
    invoke-static {v3}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_50
    .catchall {:try_start_1e .. :try_end_33} :catchall_75

    move-result-object v4

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_5e

    new-array v2, v1, [Ljava/io/Closeable;

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    move v0, v1

    :goto_40
    return v0

    :cond_41
    const-wide/16 v6, 0x3e8

    :try_start_43
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_49
    .catchall {:try_start_43 .. :try_end_46} :catchall_75

    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :catch_49
    move-exception v6

    :try_start_4a
    const-string v7, "StatisticPoster"

    invoke-static {v7, v6}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_50
    .catchall {:try_start_4a .. :try_end_4f} :catchall_75

    goto :goto_46

    :catch_50
    move-exception v2

    :try_start_51
    const-string v4, "StatisticPoster"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_75

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_40

    :cond_5e
    const/16 v5, 0xc9

    if-ne v2, v5, :cond_6d

    :try_start_62
    invoke-virtual {p0, v4}, Lcom/baidu/android/pushservice/i/s;->a(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_50
    .catchall {:try_start_62 .. :try_end_65} :catchall_75

    :cond_65
    :goto_65
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_40

    :cond_6d
    const/16 v5, 0x193

    if-ne v2, v5, :cond_65

    :try_start_71
    invoke-virtual {p0, v4}, Lcom/baidu/android/pushservice/i/s;->b(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_50
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_65

    :catchall_75
    move-exception v2

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v2
.end method

.method static synthetic b(Lcom/baidu/android/pushservice/i/s;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d()Z
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/i/s;->d:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->d(Landroid/content/Context;)J

    move-result-wide v4

    const-string v1, "StatisticPoster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSendStatisticData currentTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lastSendTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_57

    sub-long v6, v2, v4

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->e(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_16

    :cond_57
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/baidu/android/pushservice/util/n;->b(Landroid/content/Context;JJ)Z

    move-result v0

    goto :goto_16
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_a
    const-string v2, "user_device"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i/a/b;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "user_network"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/i/a/b;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel_id"

    iget-object v3, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "push_running_version"

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "push_channel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_39} :catch_3e

    :goto_39
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_39
.end method

.method public a(JJII)Ljava/lang/String;
    .registers 16

    const/4 v0, 0x0

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/i/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "common"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->c:Lcom/baidu/android/pushservice/i/u;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/android/pushservice/i/u;->a(JJII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "application_info"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3b} :catch_78

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x75

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x7b

    aput-byte v3, v1, v2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4d} :catch_50

    :goto_4d
    if-nez v1, :cond_53

    :goto_4f
    return-object v0

    :catch_50
    move-exception v1

    move-object v1, v0

    goto :goto_4d

    :cond_53
    :try_start_53
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/j/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_53 .. :try_end_58} :catch_5a

    move-result-object v0

    goto :goto_4f

    :catch_5a
    move-exception v1

    const-string v2, "StatisticPoster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :catch_78
    move-exception v1

    goto :goto_3b
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "config_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "interval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v1, :cond_25

    if-lez v0, :cond_24

    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;J)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-ne v1, v3, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/i/s;->d:Z
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_24

    :catch_2b
    move-exception v0

    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse 201 exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_45
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8a

    if-lez v0, :cond_24

    :try_start_4a
    iget-object v1, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.android.pushservice.action.METHOD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    const-string v3, "com.baidu.android.pushservice.action.ENBALE_APPSTAT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const-class v3, Lcom/baidu/android/pushservice/PushService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_24

    :cond_8a
    const/16 v0, 0xa

    if-ne v1, v0, :cond_94

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->j(Landroid/content/Context;)V

    goto :goto_24

    :cond_94
    const/16 v0, 0xb

    if-ne v1, v0, :cond_24

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->k(Landroid/content/Context;)V
    :try_end_9d
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_9d} :catch_2b

    goto :goto_24
.end method

.method public b()V
    .registers 2

    new-instance v0, Lcom/baidu/android/pushservice/i/t;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i/t;-><init>(Lcom/baidu/android/pushservice/i/s;)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/i/t;->start()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const v0, 0xc359

    if-ne v1, v0, :cond_21

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushSettings;->b(Landroid/content/Context;I)V
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method public b(JJII)Z
    .registers 10

    invoke-virtual/range {p0 .. p6}, Lcom/baidu/android/pushservice/i/s;->a(JJII)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://statsonline.pushct.baidu.com/pushlog_special"

    :try_start_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "1.0"

    invoke-direct {p0, v1, v0, v2}, Lcom/baidu/android/pushservice/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_11} :catch_13

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    const-string v0, "StatisticPoster"

    const-string v1, "OutOfMemoryError when posting"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized c()V
    .registers 11

    const/16 v9, 0x3e8

    monitor-enter p0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->d(Landroid/content/Context;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/baidu/android/pushservice/util/n;->a(Landroid/content/Context;JJ)I

    move-result v0

    const/4 v6, 0x0

    move v8, v0

    :goto_15
    if-lt v8, v9, :cond_26

    const/16 v7, 0x3e8

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/android/pushservice/i/s;->b(JJII)Z

    move-result v0

    if-eqz v0, :cond_41

    add-int/lit16 v0, v8, -0x3e8

    add-int/lit16 v6, v6, 0x3e8

    move v8, v0

    goto :goto_15

    :cond_26
    const/4 v0, 0x1

    if-gt v8, v9, :cond_31

    if-lez v8, :cond_31

    move-object v1, p0

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/android/pushservice/i/s;->b(JJII)Z

    move-result v0

    :cond_31
    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;J)V
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_5d

    :try_start_3c
    iget-object v0, p0, Lcom/baidu/android/pushservice/i/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/n;->c(Landroid/content/Context;)J
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_43
    .catchall {:try_start_3c .. :try_end_41} :catchall_5d

    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    :catch_43
    move-exception v0

    :try_start_44
    const-string v1, "StatisticPoster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBehaviorInfo exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_44 .. :try_end_5c} :catchall_5d

    goto :goto_41

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
