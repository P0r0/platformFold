.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/alipay/sdk/util/h;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    .line 42
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method private a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 159
    invoke-virtual {p1}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 163
    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 166
    const/4 v3, 0x1

    aget-object v0, v0, v3

    .line 167
    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_35
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_48
    .catchall {:try_start_35 .. :try_end_3a} :catchall_4f

    .line 179
    monitor-exit v1

    .line 181
    sget-object v0, Lcom/alipay/sdk/app/m;->a:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 183
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 185
    :cond_47
    :goto_47
    return-object v0

    .line 176
    :catch_48
    move-exception v0

    :try_start_49
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_47

    .line 179
    :catchall_4f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    new-instance v0, Lcom/alipay/sdk/widget/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    .line 102
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    .line 103
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_2c

    .line 109
    :cond_27
    :goto_27
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    goto :goto_27
.end method

.method private a(Ljava/lang/String;Lcom/alipay/sdk/util/h;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 53
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V

    .line 54
    const-string v0, "bizcontext="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "&bizcontext=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_39
    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_45
    :goto_45
    return-object v0

    .line 66
    :cond_46
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 67
    invoke-virtual {p2, p1}, Lcom/alipay/sdk/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "failed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 70
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 71
    :cond_5f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 72
    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 77
    :cond_6a
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 113
    new-instance v1, Lcom/alipay/sdk/data/c;

    invoke-direct {v1}, Lcom/alipay/sdk/data/c;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/alipay/sdk/data/b;->a(Lcom/alipay/sdk/data/c;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/alipay/sdk/data/e;

    move-result-object v2

    .line 115
    new-instance v3, Lcom/alipay/sdk/net/d;

    new-instance v1, Lcom/alipay/sdk/data/c;

    invoke-direct {v1}, Lcom/alipay/sdk/data/c;-><init>()V

    invoke-direct {v3, v1}, Lcom/alipay/sdk/net/d;-><init>(Lcom/alipay/sdk/data/c;)V

    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_1a
    iget-object v4, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;

    move-result-object v2

    .line 120
    iget-object v2, v2, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    .line 121
    const-string v3, "form"

    .line 122
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "onload"

    .line 121
    invoke-static {v2, v3}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;

    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/alipay/sdk/protocol/a;->a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    .line 124
    array-length v4, v3

    move v2, v0

    :goto_35
    if-ge v2, v4, :cond_ed

    aget-object v5, v3, v2

    .line 125
    sget-object v6, Lcom/alipay/sdk/protocol/a;->f:Lcom/alipay/sdk/protocol/a;

    if-ne v5, v6, :cond_70

    .line 126
    invoke-virtual {v5}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/sdk/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_70

    const-string v6, "tid"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v6

    iget-object v6, v6, Lcom/alipay/sdk/sys/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/sdk/tid/b;->a()Lcom/alipay/sdk/tid/b;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_70

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 124
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 126
    :cond_73
    const/4 v8, 0x1

    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v5, v5, v8

    iput-object v5, v7, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    new-instance v5, Lcom/alipay/sdk/tid/a;

    invoke-direct {v5, v6}, Lcom/alipay/sdk/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_1a .. :try_end_82} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_82} :catch_d1
    .catchall {:try_start_1a .. :try_end_82} :catchall_e2

    :try_start_82
    invoke-static {v6}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/sdk/util/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Lcom/alipay/sdk/tid/b;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/alipay/sdk/tid/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v8, v6, v9, v7}, Lcom/alipay/sdk/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_99} :catch_cc
    .catchall {:try_start_82 .. :try_end_99} :catchall_dd

    :try_start_99
    invoke-virtual {v5}, Lcom/alipay/sdk/tid/a;->close()V
    :try_end_9c
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_99 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_d1
    .catchall {:try_start_99 .. :try_end_9c} :catchall_e2

    goto :goto_70

    .line 140
    :catch_9d
    move-exception v0

    :try_start_9e
    sget-object v0, Lcom/alipay/sdk/app/n;->d:Lcom/alipay/sdk/app/n;

    .line 142
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    .line 141
    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_e2

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v1, :cond_b1

    .line 146
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    .line 149
    :cond_b1
    :goto_b1
    if-nez v0, :cond_bd

    .line 150
    sget-object v0, Lcom/alipay/sdk/app/n;->b:Lcom/alipay/sdk/app/n;

    .line 151
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v0

    .line 150
    invoke-static {v0}, Lcom/alipay/sdk/app/n;->a(I)Lcom/alipay/sdk/app/n;

    move-result-object v0

    .line 153
    :cond_bd
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->a()I

    move-result v1

    .line 154
    invoke-virtual {v0}, Lcom/alipay/sdk/app/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 153
    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/m;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_cb
    :goto_cb
    return-object v0

    .line 126
    :catch_cc
    move-exception v6

    :try_start_cd
    invoke-virtual {v5}, Lcom/alipay/sdk/tid/a;->close()V
    :try_end_d0
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_cd .. :try_end_d0} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d1
    .catchall {:try_start_cd .. :try_end_d0} :catchall_e2

    goto :goto_70

    .line 145
    :catch_d1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_11b

    .line 146
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    move-object v0, v1

    goto :goto_b1

    .line 126
    :catchall_dd
    move-exception v0

    :try_start_de
    invoke-virtual {v5}, Lcom/alipay/sdk/tid/a;->close()V

    throw v0
    :try_end_e2
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_de .. :try_end_e2} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e2} :catch_d1
    .catchall {:try_start_de .. :try_end_e2} :catchall_e2

    .line 145
    :catchall_e2
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v1, :cond_ec

    .line 146
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_ec
    throw v0

    .line 130
    :cond_ed
    :try_start_ed
    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v2, :cond_f6

    .line 131
    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v2}, Lcom/alipay/sdk/widget/a;->c()V

    .line 133
    :cond_f6
    array-length v2, v3

    :goto_f7
    if-ge v0, v2, :cond_110

    aget-object v4, v3, v0

    .line 134
    sget-object v5, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v4, v5, :cond_10d

    .line 135
    invoke-direct {p0, v4}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/protocol/a;)Ljava/lang/String;
    :try_end_102
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_ed .. :try_end_102} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_102} :catch_d1
    .catchall {:try_start_ed .. :try_end_102} :catchall_e2

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v1, :cond_cb

    .line 146
    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    goto :goto_cb

    .line 133
    :cond_10d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 145
    :cond_110
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_11b

    .line 146
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/widget/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    move-object v0, v1

    goto :goto_b1

    :cond_11b
    move-object v0, v1

    goto :goto_b1
.end method


# virtual methods
.method public checkAccountIfExist()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/alipay/sdk/data/b;->a()Lcom/alipay/sdk/data/e;

    move-result-object v1

    .line 90
    :try_start_5
    new-instance v2, Lcom/alipay/sdk/net/d;

    invoke-direct {v2}, Lcom/alipay/sdk/net/d;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;

    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    const-string v2, "hasAccount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1b

    move-result v0

    .line 94
    :goto_1a
    return v0

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "15.0.1"

    return-object v0
.end method

.method public declared-synchronized pay(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/alipay/sdk/util/h;

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alipay/sdk/util/h;-><init>(Landroid/app/Activity;)V

    .line 47
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/data/d;->a()Lcom/alipay/sdk/data/d;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;Lcom/alipay/sdk/data/d;)V

    const-string v0, "bizcontext="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&bizcontext=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/sdk/sys/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/alipay/sdk/sys/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_41
    const-string v0, "paymethod=\"expressGateway\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/util/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v1, p1}, Lcom/alipay/sdk/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-static {}, Lcom/alipay/sdk/app/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_67
    :goto_67
    invoke-virtual {v1}, Lcom/alipay/sdk/util/h;->a()V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_71

    .line 49
    monitor-exit p0

    return-object v0

    .line 47
    :cond_6c
    :try_start_6c
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_71

    move-result-object v0

    goto :goto_67

    .line 46
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0
.end method
