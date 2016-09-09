.class public Lcom/baidu/android/pushservice/e/w;
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


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/k;Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1, p6}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->j:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->k:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/e/w;->f:I

    iput-object p5, p0, Lcom/baidu/android/pushservice/e/w;->g:Lcom/baidu/android/pushservice/g/k;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/w;->k:Ljava/lang/String;

    :cond_1f
    iput-object p4, p0, Lcom/baidu/android/pushservice/e/w;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/android/pushservice/e/m;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/k;Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0, p1, p9}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->j:Ljava/lang/String;

    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->k:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/android/pushservice/e/w;->f:I

    iput-object p8, p0, Lcom/baidu/android/pushservice/e/w;->g:Lcom/baidu/android/pushservice/g/k;

    iput-object p3, p0, Lcom/baidu/android/pushservice/e/w;->h:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/w;->i:Ljava/lang/String;

    :cond_21
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iput-object p5, p0, Lcom/baidu/android/pushservice/e/w;->j:Ljava/lang/String;

    :cond_29
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iput-object p6, p0, Lcom/baidu/android/pushservice/e/w;->k:Ljava/lang/String;

    :cond_31
    iget-object v0, p1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/w;->l:Ljava/lang/String;

    :cond_3d
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/android/pushservice/PushConstants;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/android/pushservice/e/w;->a(I[B)V

    return-void
.end method

.method protected a(I[B)V
    .registers 7

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/w;->g:Lcom/baidu/android/pushservice/g/k;

    if-eqz v0, :cond_23

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_msg"

    const-string v3, "error_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_24

    :goto_1e
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->g:Lcom/baidu/android/pushservice/g/k;

    invoke-interface {v1, p1, v0}, Lcom/baidu/android/pushservice/g/k;->a(ILjava/util/HashMap;)V

    :cond_23
    return-void

    :catch_24
    move-exception v1

    goto :goto_1e
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

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/util/HashMap;)V

    const-string v0, "method"

    const-string v1, "lightapp_unbind"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/baidu/android/pushservice/e/w;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_98

    const-string v0, "push_type"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonce"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "referer"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/w;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "csrftoken"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cuid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/j/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3e
    const-string v0, "host_app"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->k:Ljava/lang/String;

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

    const-string v0, "BaseRegisterProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L BIND url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/android/pushservice/e/w;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseRegisterProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L UNBIND param -- "

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

    :cond_98
    iget v0, p0, Lcom/baidu/android/pushservice/e/w;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a2

    iget v0, p0, Lcom/baidu/android/pushservice/e/w;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    :cond_a2
    const-string v0, "push_type"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_24

    :cond_ab
    const-string v0, "push_hash"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/w;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e
.end method
