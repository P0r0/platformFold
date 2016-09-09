.class public abstract Lcom/baidu/android/pushservice/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/baidu/android/pushservice/e/m;

.field protected c:Ljava/lang/String;

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/a;->d:Z

    iput-object p1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/android/pushservice/ah;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Lcom/baidu/android/pushservice/e/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/android/pushservice/e/b;-><init>(Lcom/baidu/android/pushservice/e/a;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/e/b;->start()V

    return-void
.end method

.method private b(I)I
    .registers 12

    const/16 v3, 0x2712

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_73

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    if-ne p1, v1, :cond_12

    move v0, v1

    :goto_b
    invoke-static {v4, v0}, Lcom/baidu/android/pushservice/ah;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_11
    return v3

    :cond_12
    move v0, v2

    goto :goto_b

    :cond_14
    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    const-string v5, "http://"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3c

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    :cond_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    const-string v0, "AbstractProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " --- abstract request URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/h/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_73
    const/4 v4, 0x0

    :try_start_74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(Ljava/util/HashMap;)V

    iget-object v5, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    const-string v6, "POST"

    invoke-static {v5, v6, v0}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v6

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/f/b;->a()Ljava/io/InputStream;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_8b} :catch_10f
    .catchall {:try_start_74 .. :try_end_8b} :catchall_16c

    move-result-object v4

    const/16 v0, 0xc8

    if-ne v6, v0, :cond_d1

    :try_start_90
    invoke-static {v4}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "AbstractProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<< networkRegister return string :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/baidu/android/pushservice/e/a;->a(I[B)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_b8} :catch_16e
    .catchall {:try_start_90 .. :try_end_b8} :catchall_16c

    move v5, v2

    move v0, v2

    :goto_ba
    if-eqz v4, :cond_be

    if-nez v6, :cond_c7

    :cond_be
    const/4 v0, 0x2

    if-lt p1, v0, :cond_c6

    const/16 v0, 0x2712

    :try_start_c3
    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(I)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_172
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_16c

    :cond_c6
    move v0, v3

    :cond_c7
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    :goto_ce
    move v3, v0

    goto/16 :goto_11

    :cond_d1
    :try_start_d1
    const-string v0, "AbstractProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "networkRegister request failed:  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e9} :catch_16e
    .catchall {:try_start_d1 .. :try_end_e9} :catchall_16c

    const/16 v0, 0x1f7

    if-ne v6, v0, :cond_176

    move v5, v1

    :goto_ee
    :try_start_ee
    invoke-static {v4}, Lcom/baidu/android/pushservice/i/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "AbstractProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<<< networkRegister return string :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10d} :catch_172
    .catchall {:try_start_ee .. :try_end_10d} :catchall_16c

    move v0, v6

    goto :goto_ba

    :catch_10f
    move-exception v0

    move-object v3, v4

    move v4, v2

    :goto_112
    :try_start_112
    const-string v5, "AbstractProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v4, :cond_140

    const/16 v0, 0x2713

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(I)V
    :try_end_137
    .catchall {:try_start_112 .. :try_end_137} :catchall_162

    :goto_137
    const/4 v0, -0x1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    goto :goto_ce

    :cond_140
    :try_start_140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryConnect failed setResult UnKnown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/16 v0, 0x4e21

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(I)V
    :try_end_161
    .catchall {:try_start_140 .. :try_end_161} :catchall_162

    goto :goto_137

    :catchall_162
    move-exception v0

    move-object v4, v3

    :goto_164
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/baidu/android/pushservice/f/c;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_16c
    move-exception v0

    goto :goto_164

    :catch_16e
    move-exception v0

    move-object v3, v4

    move v4, v2

    goto :goto_112

    :catch_172
    move-exception v0

    move-object v3, v4

    move v4, v5

    goto :goto_112

    :cond_176
    move v5, v2

    goto/16 :goto_ee
.end method

.method private b(I[B)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.android.pushservice.action.internal.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "error_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "content"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(Landroid/content/Intent;)V

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> sendInternalMethodResult  ,method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,content : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "method_deal_lapp_bind_intent"

    aput-object v2, v3, v1

    const-string v2, "method_lapp_unbind"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "method_set_lapp_tags"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "method_del_lapp_tags"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "method_list_lapp_tags"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_1e
    if-ge v2, v4, :cond_2c

    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    :goto_28
    return v0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    move v0, v1

    goto :goto_28
.end method


# virtual methods
.method protected a()V
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBIND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_deal_webapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_deal_lapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_sdk_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_lapp_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_set_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_del_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_list_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    const-string v0, "AbstractProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v2, v2, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a3
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d9

    const-string v0, "AbstractProcessor"

    const-string v1, "Network is not useful!"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_c1

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    const-string v1, "039912"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c1
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(I)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/p;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "AbstractProcessor"

    const-string v1, "startPushService BaseApiProcess"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_d9
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_e6

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    const-string v1, "039914"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e6
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v1

    monitor-enter v1

    :try_start_ed
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/e/a;->d:Z

    if-eqz v0, :cond_127

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/a;->d:Z
    :try_end_100
    .catchall {:try_start_ed .. :try_end_100} :catchall_13b

    :goto_100
    :try_start_100
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/al;->a()Z

    move-result v0

    if-nez v0, :cond_127

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_109
    .catch Ljava/lang/InterruptedException; {:try_start_100 .. :try_end_109} :catch_10a
    .catchall {:try_start_100 .. :try_end_109} :catchall_13b

    goto :goto_100

    :catch_10a
    move-exception v0

    :try_start_10b
    const-string v2, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_127
    monitor-exit v1
    :try_end_128
    .catchall {:try_start_10b .. :try_end_128} :catchall_13b

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/al;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/al;->d()Z

    move-result v0

    if-nez v0, :cond_13e

    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/e/a;->a(I)V

    goto/16 :goto_e

    :catchall_13b
    move-exception v0

    :try_start_13c
    monitor-exit v1
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    throw v0

    :cond_13e
    invoke-virtual {p0}, Lcom/baidu/android/pushservice/e/a;->b()Z

    move-result v0

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netWorkConnect connectResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_e
.end method

.method protected a(I)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushConstants;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/android/pushservice/e/a;->a(I[B)V

    return-void
.end method

.method protected a(I[B)V
    .registers 11

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->b:Ljava/lang/String;

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/a;->b(I[B)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_deal_webapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    const-string v0, "com.baidu.android.pushservice.action.web.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_30
    const-string v0, "method"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "error_msg"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "content"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/baidu/android/pushservice/e/a;->a(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v3, "method_bind"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26a

    const-string v0, "access_token"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "secret_key"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "real_bind"

    const-string v3, "real_bind"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/baidu/android/pushservice/i/c;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/i/c;-><init>()V

    const-string v0, "020101"

    iput-object v0, v3, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/baidu/android/pushservice/i/c;->g:J

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/android/pushservice/i/c;->h:Ljava/lang/String;

    new-instance v0, Lcom/baidu/android/pushservice/i/m;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/m;-><init>()V

    :try_start_8d
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "request_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/android/pushservice/i/c;->b:Ljava/lang/String;

    if-eqz p1, :cond_a9

    const-string v5, "error_msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    :cond_a9
    const-string v5, "response_params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "appid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/android/pushservice/c/b;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v6

    iput-object v5, v3, Lcom/baidu/android/pushservice/i/c;->j:Ljava/lang/String;

    const-string v7, "response_params"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "user_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->a(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/baidu/android/pushservice/util/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/android/pushservice/i/m;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/i/m;->b(Ljava/lang/String;)V

    if-eqz v6, :cond_ed

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/android/pushservice/i/m;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/c/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/baidu/android/pushservice/util/q;->a(Lcom/baidu/android/pushservice/i/m;Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/i/m;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_ec} :catch_21b

    move-result-object v0

    :cond_ed
    :goto_ed
    iput p1, v3, Lcom/baidu/android/pushservice/i/c;->i:I

    :try_start_ef
    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J

    if-nez v1, :cond_fb

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fb} :catch_249

    :cond_fb
    :goto_fb
    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_131

    new-instance v0, Lcom/baidu/android/pushservice/i/j;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/j;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/android/pushservice/i/j;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->k:Ljava/lang/String;

    const-string v1, "039904"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->f:Ljava/lang/String;

    iput p1, v0, Lcom/baidu/android/pushservice/i/j;->i:I

    if-eqz p2, :cond_12c

    array-length v1, p2

    if-lez v1, :cond_12c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/j;->l:Ljava/lang/String;

    :cond_12c
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/j;)J

    :cond_131
    :goto_131
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/e/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_145
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/android/pushservice/e/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_156

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_156
    const-string v0, "AbstractProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> sendResult to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,errorCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,content : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_1be
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_deal_lapp_bind_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_lapp_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_set_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_del_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fa

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_list_lapp_tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    :cond_1fa
    const-string v0, "com.baidu.android.pushservice.action.lapp.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :cond_201
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_sdk_bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    const-string v0, "com.baidu.android.pushservice.action.sdk.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :cond_214
    const-string v0, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_30

    :catch_21b
    move-exception v1

    const/4 v1, 0x1

    if-eqz p2, :cond_23e

    const-string v4, "AbstractProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind failed msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ed

    :cond_23e
    const-string v4, "AbstractProcessor"

    const-string v5, "bind failed"

    iget-object v6, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_ed

    :catch_249
    move-exception v0

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_fb

    :cond_26a
    if-eqz p2, :cond_131

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "method_unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_284

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v1, "com.baidu.android.pushservice.action.UNBINDAPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    :cond_284
    new-instance v0, Lcom/baidu/android/pushservice/i/c;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/c;-><init>()V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->a:Ljava/lang/String;

    const-string v3, "method_unbind"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e7

    const-string v1, "020301"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    :goto_299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/baidu/android/pushservice/i/c;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->j:Ljava/lang/String;

    :try_start_2ad
    new-instance v1, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "request_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->b:Ljava/lang/String;
    :try_end_2bf
    .catch Lorg/json/JSONException; {:try_start_2ad .. :try_end_2bf} :catch_2ec

    :goto_2bf
    :try_start_2bf
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_2c4} :catch_2c6

    goto/16 :goto_131

    :catch_2c6
    move-exception v0

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_131

    :cond_2e7
    const-string v1, "020601"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto :goto_299

    :catch_2ec
    move-exception v1

    const-string v1, "AbstractProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbind failed msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    goto :goto_2bf
.end method

.method protected a(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "{\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "{\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_15
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "request_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "error_msg"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "request_id"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/android/pushservice/e/a;->a(I[B)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_46} :catch_47

    goto :goto_2

    :catch_47
    move-exception v0

    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->b(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "rsa_bduss"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rsa_access_token"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_34
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v0, v0, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "apikey"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public b()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "AbstractProcessor"

    const-string v2, "mUrl is null"

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/baidu/android/pushservice/h/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_12
    :goto_12
    return v0

    :cond_13
    const-string v1, "AbstractProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_2e
    const/4 v2, 0x2

    if-gt v1, v2, :cond_12

    invoke-direct {p0, v1}, Lcom/baidu/android/pushservice/e/a;->b(I)I

    move-result v2

    if-nez v2, :cond_40

    const/4 v0, 0x1

    if-lez v1, :cond_12

    const-string v1, "030402"

    invoke-direct {p0, v1, v2}, Lcom/baidu/android/pushservice/e/a;->a(Ljava/lang/String;I)V

    goto :goto_12

    :cond_40
    const/16 v3, 0x2712

    if-ne v2, v3, :cond_12

    if-lez v1, :cond_4e

    const-string v3, "030403"

    invoke-direct {p0, v3, v2}, Lcom/baidu/android/pushservice/e/a;->a(Ljava/lang/String;I)V

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4e
    const-string v3, "030401"

    invoke-direct {p0, v3, v2}, Lcom/baidu/android/pushservice/e/a;->a(Ljava/lang/String;I)V

    goto :goto_4b
.end method

.method public run()V
    .registers 1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/e/a;->a()V

    return-void
.end method
