.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;

.field private static final b:I = 0x49


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/alipay/sdk/util/h;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    invoke-static {p1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 65
    new-instance v0, Lcom/alipay/sdk/util/h;

    invoke-direct {v0, p1}, Lcom/alipay/sdk/util/h;-><init>(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "failed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1b
    :goto_1b
    return-object v0

    .line 70
    :cond_1c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 71
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 76
    :cond_27
    invoke-direct {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 141
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_29
    sget-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_3c
    .catchall {:try_start_29 .. :try_end_2e} :catchall_43

    .line 153
    monitor-exit v1

    .line 155
    sget-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 157
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_3b
    :goto_3b
    return-object v0

    .line 151
    :catch_3c
    move-exception v0

    :try_start_3d
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    goto :goto_3b

    .line 153
    :catchall_43
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 165
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 166
    const-string v2, "com.eg.android.AlipayGphone"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 168
    if-nez v1, :cond_10

    .line 176
    :cond_f
    :goto_f
    return v0

    .line 170
    :cond_10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_18

    .line 171
    const/16 v2, 0x49

    if-lt v1, v2, :cond_f

    .line 176
    const/4 v0, 0x1

    goto :goto_f

    .line 174
    :catch_18
    move-exception v1

    goto :goto_f
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    .line 83
    if-eqz p1, :cond_c8

    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 84
    new-instance v0, Lcom/alipay/sdk/widget/a;

    invoke-direct {v0, p1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_7e

    .line 90
    :goto_12
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V

    .line 92
    new-instance v3, Lcom/alipay/sdk/data/c;

    invoke-direct {v3}, Lcom/alipay/sdk/data/c;-><init>()V

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 92
    invoke-static {v3, v4, v5}, Lcom/alipay/sdk/data/b;->a(Lcom/alipay/sdk/data/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/e;

    move-result-object v3

    .line 94
    iget-object v4, v3, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v5, "com.alipay.mobilecashier"

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->b:Ljava/lang/String;

    .line 95
    iget-object v4, v3, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v5, "com.alipay.mcpay"

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->e:Ljava/lang/String;

    .line 96
    iget-object v4, v3, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v5, "4.0.3"

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->d:Ljava/lang/String;

    .line 97
    iget-object v4, v3, Lcom/alipay/sdk/data/e;->a:Lcom/alipay/sdk/data/a;

    const-string v5, "/cashier/main"

    iput-object v5, v4, Lcom/alipay/sdk/data/a;->c:Ljava/lang/String;

    .line 98
    new-instance v4, Lcom/alipay/sdk/net/d;

    new-instance v5, Lcom/alipay/sdk/data/c;

    invoke-direct {v5}, Lcom/alipay/sdk/data/c;-><init>()V

    invoke-direct {v4, v5}, Lcom/alipay/sdk/net/d;-><init>(Lcom/alipay/sdk/data/c;)V

    .line 103
    const/4 v5, 0x0

    :try_start_54
    invoke-virtual {v4, p1, v3, v5}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;

    move-result-object v3

    .line 104
    if-eqz v0, :cond_5e

    .line 105
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    move-object v0, v1

    .line 109
    :cond_5e
    iget-object v3, v3, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    .line 110
    const-string v4, "form"

    .line 111
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "onload"

    .line 110
    invoke-static {v3, v4}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;

    move-result-object v3

    .line 112
    invoke-static {v3}, Lcom/alipay/sdk/protocol/a;->a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    .line 114
    array-length v4, v3

    :goto_71
    if-ge v2, v4, :cond_84

    aget-object v5, v3, v2

    .line 115
    sget-object v6, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v5, v6, :cond_81

    .line 116
    invoke-direct {p0, v5}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    :try_end_7c
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_54 .. :try_end_7c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7c} :catch_b2
    .catchall {:try_start_54 .. :try_end_7c} :catchall_ba

    move-result-object v0

    .line 134
    :goto_7d
    return-object v0

    .line 88
    :catch_7e
    move-exception v0

    move-object v0, v1

    goto :goto_12

    .line 114
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_84
    move-object v0, v1

    .line 128
    :goto_85
    if-nez v0, :cond_91

    .line 129
    sget-object v0, Lcom/alipay/sdk/app/n;->b:Lcom/alipay/sdk/app/n;

    .line 130
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    .line 129
    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v0

    .line 132
    :cond_91
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v1

    .line 133
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 132
    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7d

    .line 120
    :catch_a0
    move-exception v1

    :try_start_a1
    sget-object v1, Lcom/alipay/sdk/app/n;->d:Lcom/alipay/sdk/app/n;

    .line 121
    invoke-virtual {v1}, Lcom/alipay/sdk/app/n;->a()I

    move-result v1

    .line 120
    invoke-static {v1}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_ba

    move-result-object v1

    .line 124
    if-eqz v0, :cond_c6

    .line 125
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    move-object v0, v1

    goto :goto_85

    .line 124
    :catch_b2
    move-exception v2

    if-eqz v0, :cond_c4

    .line 125
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    move-object v0, v1

    goto :goto_85

    .line 124
    :catchall_ba
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    if-eqz v1, :cond_c3

    .line 125
    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_c3
    throw v0

    :cond_c4
    move-object v0, v1

    goto :goto_85

    :cond_c6
    move-object v0, v1

    goto :goto_85

    :cond_c8
    move-object v0, v1

    goto/16 :goto_12
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    const-string v0, "bizcontext="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "&bizcontext=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v1, Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    :cond_2d
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Lcom/alipay/sdk/util/h;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/util/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_57

    move-result-object v0

    :cond_50
    :goto_50
    monitor-exit p0

    return-object v0

    :cond_52
    :try_start_52
    invoke-direct {p0, v1, p1}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    move-result-object v0

    goto :goto_50

    .line 51
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method
