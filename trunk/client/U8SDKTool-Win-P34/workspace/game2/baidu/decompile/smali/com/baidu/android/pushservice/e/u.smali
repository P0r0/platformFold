.class public Lcom/baidu/android/pushservice/e/u;
.super Lcom/baidu/android/pushservice/e/e;


# instance fields
.field private f:I

.field private g:Lcom/baidu/android/pushservice/g/k;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/k;Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0, p1, p7}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->m:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->o:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    iput-object p6, p0, Lcom/baidu/android/pushservice/e/u;->g:Lcom/baidu/android/pushservice/g/k;

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/u;->o:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/u;->n:Ljava/lang/String;

    :cond_34
    iget-object v0, p1, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/k;Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0, p1, p8}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->m:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->o:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    iput-object p7, p0, Lcom/baidu/android/pushservice/e/u;->g:Lcom/baidu/android/pushservice/g/k;

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/u;->k:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/u;->l:Ljava/lang/String;

    :cond_34
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iput-object p5, p0, Lcom/baidu/android/pushservice/e/u;->m:Ljava/lang/String;

    :cond_3c
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iput-object p6, p0, Lcom/baidu/android/pushservice/e/u;->n:Ljava/lang/String;

    :cond_44
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushConstants;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/android/pushservice/e/u;->a(I[B)V

    return-void
.end method

.method protected a(I[B)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->g:Lcom/baidu/android/pushservice/g/k;

    if-eqz v0, :cond_25

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_62

    const-string v0, "app_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channel_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->g:Lcom/baidu/android/pushservice/g/k;

    invoke-interface {v0, p1, v1}, Lcom/baidu/android/pushservice/g/k;->a(ILjava/util/HashMap;)V

    :cond_25
    new-instance v1, Lcom/baidu/android/pushservice/i/c;

    invoke-direct {v1}, Lcom/baidu/android/pushservice/i/c;-><init>()V

    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_ac

    const-string v0, "020701"

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    :cond_33
    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/android/pushservice/i/c;->g:J

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->j:Ljava/lang/String;

    if-nez p1, :cond_d8

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->j:Ljava/lang/String;

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->c:Ljava/lang/String;

    new-instance v0, Lcom/baidu/android/pushservice/i/m;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/baidu/android/pushservice/i/m;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/android/pushservice/i/m;->c(I)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J

    :goto_5c
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_92

    :goto_61
    return-void

    :cond_62
    :try_start_62
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    const-string v3, "error_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_77} :catch_78

    goto :goto_20

    :catch_78
    move-exception v0

    :try_start_79
    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendResult E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_91} :catch_92

    goto :goto_20

    :catch_92
    move-exception v0

    const-string v1, "BaseApiProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_ac
    :try_start_ac
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b7

    const-string v0, "020703"

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_b7
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c2

    const-string v0, "020702"

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_c2
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_cd

    const-string v0, "020705"

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_cd
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_33

    const-string v0, "020707"

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto/16 :goto_33

    :cond_d8
    iput p1, v1, Lcom/baidu/android/pushservice/i/c;->i:I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_da} :catch_92

    :try_start_da
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_da .. :try_end_ec} :catch_ee
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_ec} :catch_92

    goto/16 :goto_5c

    :catch_ee
    move-exception v0

    :try_start_ef
    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert BE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_107} :catch_92

    goto/16 :goto_5c
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 5
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

    const/4 v2, 0x5

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/util/HashMap;)V

    const-string v0, "method"

    const-string v1, "lightapp_bind"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v0, "unknown"

    :cond_15
    const-string v1, "bind_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_28

    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    if-ne v0, v2, :cond_c5

    :cond_28
    const-string v0, "nonce"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "referer"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    if-ne v0, v2, :cond_bd

    const-string v0, "push_type"

    const-string v1, "5"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    :goto_49
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/u;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d8

    const-string v0, "csrftoken"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_63
    const-string v0, "host_app"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "push_sdk_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/android/pushservice/b;->a()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BaseApiProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L BIND url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/u;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseApiProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L BIND param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_bd
    const-string v0, "push_type"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_c5
    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_cf

    iget v0, p0, Lcom/baidu/android/pushservice/e/u;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    :cond_cf
    const-string v0, "push_type"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_49

    :cond_d8
    const-string v0, "push_hash"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_63
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/pushservice/e/u;->h:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/android/pushservice/e/u;->i:Ljava/lang/String;

    const-string v2, "channel_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/u;->j:Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_27} :catch_28

    :goto_27
    return-object v1

    :catch_28
    move-exception v0

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindData Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
