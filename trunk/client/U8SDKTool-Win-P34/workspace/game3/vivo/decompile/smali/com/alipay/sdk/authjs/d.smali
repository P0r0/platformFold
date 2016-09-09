.class public final Lcom/alipay/sdk/authjs/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/alipay/sdk/authjs/c;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    .line 26
    return-void
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
    .registers 8

    .prologue
    .line 18
    if-eqz p1, :cond_37

    const-string v0, "toast"

    iget-object v1, p1, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x1

    const/16 v3, 0x9c4

    if-ge v2, v3, :cond_20

    const/4 v0, 0x0

    :cond_20
    iget-object v2, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_37
    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;)Lcom/alipay/sdk/authjs/c;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    return-object v0
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 119
    if-nez p0, :cond_3

    .line 129
    :goto_2
    return-void

    .line 122
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    .line 123
    :goto_e
    if-eqz v0, :cond_16

    .line 124
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 122
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    .line 126
    :cond_16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 29
    .line 32
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "clientId"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_4e

    move-result-object v1

    .line 34
    :try_start_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    :cond_12
    :goto_12
    return-void

    .line 38
    :cond_13
    const-string v0, "param"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_51

    .line 40
    check-cast v0, Lorg/json/JSONObject;

    .line 54
    :goto_1f
    const-string v2, "func"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    const-string v4, "bundleName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v4, Lcom/alipay/sdk/authjs/a;

    const-string v5, "call"

    invoke-direct {v4, v5}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object v3, v4, Lcom/alipay/sdk/authjs/a;->j:Ljava/lang/String;

    .line 58
    iput-object v2, v4, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    .line 59
    iput-object v0, v4, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    .line 60
    iput-object v1, v4, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, v4}, Lcom/alipay/sdk/authjs/d;->a(Lcom/alipay/sdk/authjs/a;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3e

    goto :goto_12

    .line 64
    :catch_3e
    move-exception v0

    move-object v0, v1

    :goto_40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 66
    :try_start_46
    sget-object v1, Lcom/alipay/sdk/authjs/a$a;->d:Lcom/alipay/sdk/authjs/a$a;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_12

    :catch_4c
    move-exception v0

    goto :goto_12

    .line 64
    :catch_4e
    move-exception v0

    move-object v0, v2

    goto :goto_40

    :cond_51
    move-object v0, v2

    goto :goto_1f
.end method

.method private b(Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
    .registers 8

    .prologue
    .line 132
    if-eqz p1, :cond_37

    const-string v0, "toast"

    iget-object v1, p1, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 133
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, 0x1

    const/16 v3, 0x9c4

    if-ge v2, v3, :cond_20

    const/4 v0, 0x0

    :cond_20
    iget-object v2, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 135
    :cond_37
    sget-object v0, Lcom/alipay/sdk/authjs/a$a;->a:Lcom/alipay/sdk/authjs/a$a;

    return-object v0
.end method

.method private c(Lcom/alipay/sdk/authjs/a;)V
    .registers 8

    .prologue
    .line 139
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    .line 140
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "duration"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    const/4 v0, 0x1

    .line 147
    const/16 v3, 0x9c4

    if-ge v2, v3, :cond_14

    .line 148
    const/4 v0, 0x0

    .line 150
    :cond_14
    iget-object v2, p0, Lcom/alipay/sdk/authjs/d;->b:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 153
    new-instance v2, Lcom/alipay/sdk/authjs/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/sdk/authjs/f;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 168
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/authjs/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_3

    .line 99
    :goto_2
    return-void

    .line 79
    :cond_3
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->k:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    sget-object v1, Lcom/alipay/sdk/authjs/a$a;->c:Lcom/alipay/sdk/authjs/a$a;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/authjs/d;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    goto :goto_2

    .line 86
    :cond_13
    new-instance v1, Lcom/alipay/sdk/authjs/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/authjs/e;-><init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_29

    const/4 v0, 0x1

    :goto_23
    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_29
    const/4 v0, 0x0

    goto :goto_23

    :cond_2b
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    :goto_6
    return-void

    .line 106
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string v1, "error"

    invoke-virtual {p2}, Lcom/alipay/sdk/authjs/a$a;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 109
    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->m:Lorg/json/JSONObject;

    .line 110
    iput-object p1, v1, Lcom/alipay/sdk/authjs/a;->i:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/alipay/sdk/authjs/d;->a:Lcom/alipay/sdk/authjs/c;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/authjs/c;->a(Lcom/alipay/sdk/authjs/a;)V

    goto :goto_6
.end method
