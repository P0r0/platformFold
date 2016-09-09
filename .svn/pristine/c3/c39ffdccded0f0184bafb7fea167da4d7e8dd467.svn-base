.class public Lcom/baidu/android/pushservice/e/v;
.super Lcom/baidu/android/pushservice/e/d;


# instance fields
.field protected e:Ljava/lang/String;

.field private f:Lcom/baidu/android/pushservice/g/k;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/k;Landroid/content/Context;I)V
    .registers 11

    invoke-direct {p0, p1, p8}, Lcom/baidu/android/pushservice/e/d;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    iput-object p2, p0, Lcom/baidu/android/pushservice/e/v;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/v;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/v;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/android/pushservice/e/v;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/android/pushservice/e/v;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/baidu/android/pushservice/e/v;->f:Lcom/baidu/android/pushservice/g/k;

    iput p9, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    return-void
.end method

.method private b(I)V
    .registers 6

    new-instance v0, Lcom/baidu/android/pushservice/i/c;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/i/c;-><init>()V

    iget v1, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    const-string v1, "020706"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    :cond_e
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/android/pushservice/i/c;->g:J

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/i/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->j:Ljava/lang/String;

    if-nez p1, :cond_50

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/baidu/android/pushservice/i/m;

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/v;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/android/pushservice/i/m;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/baidu/android/pushservice/i/m;->b:I

    invoke-virtual {v1, v2}, Lcom/baidu/android/pushservice/i/m;->c(I)V

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/v;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/m;)J

    :goto_37
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J

    return-void

    :cond_3d
    iget v1, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    if-nez v1, :cond_46

    const-string v1, "020704"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto :goto_e

    :cond_46
    iget v1, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    const-string v1, "020708"

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->f:Ljava/lang/String;

    goto :goto_e

    :cond_50
    iput p1, v0, Lcom/baidu/android/pushservice/i/c;->i:I

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    goto :goto_37
.end method


# virtual methods
.method protected a(I)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/v;->f:Lcom/baidu/android/pushservice/g/k;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "details"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->f:Lcom/baidu/android/pushservice/g/k;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/k;->a(ILjava/util/HashMap;)V

    :cond_15
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/e/v;->b(I)V

    return-void
.end method

.method protected a(I[B)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/v;->f:Lcom/baidu/android/pushservice/g/k;

    if-eqz v0, :cond_17

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_1b

    const-string v0, "details"

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/v;->f:Lcom/baidu/android/pushservice/g/k;

    invoke-interface {v0, p1, v1}, Lcom/baidu/android/pushservice/g/k;->a(ILjava/util/HashMap;)V

    :cond_17
    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/e/v;->b(I)V

    return-void

    :cond_1b
    :try_start_1b
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    const-string v3, "error_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_31

    goto :goto_12

    :catch_31
    move-exception v0

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

    goto :goto_12
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

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->a(Ljava/util/HashMap;)V

    const-string v0, "method"

    const-string v1, "lightapp_settags"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tags"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "csrftoken"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonce"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    iget v0, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    if-nez v0, :cond_66

    :cond_33
    const-string v0, "push_type"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/v;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "referer"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/v;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    const-string v0, "BaseApiProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lightapp_subscribe_service param -- "

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

    :cond_66
    iget v0, p0, Lcom/baidu/android/pushservice/e/v;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    const-string v0, "push_type"

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "response_params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "details"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/v;->g:Ljava/lang/String;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_1b} :catch_1c

    :goto_1b
    return-object v1

    :catch_1c
    move-exception v0

    const-string v2, "BaseApiProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
