.class public Lcom/baidu/android/pushservice/e/g;
.super Lcom/baidu/android/pushservice/e/e;


# instance fields
.field protected f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;I)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    iput p3, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/g;->g:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/android/pushservice/e/g;->h:I

    iget v0, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/g;->e:Z

    :cond_13
    return-void
.end method

.method public constructor <init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/baidu/android/pushservice/e/e;-><init>(Lcom/baidu/android/pushservice/e/m;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    iput p3, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    iput-object p4, p0, Lcom/baidu/android/pushservice/e/g;->g:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/android/pushservice/e/g;->h:I

    iput-object p6, p0, Lcom/baidu/android/pushservice/e/g;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/android/pushservice/e/m;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/android/pushservice/e/g;->j:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/e/g;->e:Z

    :cond_19
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "bind_status"

    iget v1, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .registers 6
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

    const-string v1, "bind"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_14
    const-string v1, "bind_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bind_status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/baidu/android/pushservice/e/g;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "push_sdk_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/baidu/android/pushservice/e/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->j:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "is_baidu_internal_bind"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "bind_notify_status"

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/g;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    const-string v0, "Bind"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BIND param -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/android/pushservice/e/c;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/android/pushservice/b;->b()I

    move-result v0

    if-lez v0, :cond_a3

    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->a:Landroid/content/Context;

    const-string v1, "039903"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/i/v;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    :cond_a3
    return-void

    :cond_a4
    iget-object v0, p0, Lcom/baidu/android/pushservice/e/g;->g:Ljava/lang/String;

    goto/16 :goto_14
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-super {p0, p1}, Lcom/baidu/android/pushservice/e/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "response_params"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "appid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_16} :catch_5f

    move-result-object v0

    :goto_17
    iget-object v1, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/android/pushservice/c/b;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v1, v1, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    new-instance v1, Lcom/baidu/android/pushservice/e/h;

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v3, v3, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/baidu/android/pushservice/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/android/pushservice/e/g;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v4, v4, Lcom/baidu/android/pushservice/e/m;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/baidu/android/pushservice/c/b;->a(Ljava/lang/String;Lcom/baidu/android/pushservice/e/h;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/baidu/android/pushservice/e/g;->a:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/android/pushservice/e/g;->b:Lcom/baidu/android/pushservice/e/m;

    iget-object v4, v4, Lcom/baidu/android/pushservice/e/m;->i:Ljava/lang/String;

    invoke-static {v1, v0, v3, v4}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_5e
    return-object v2

    :catch_5f
    move-exception v1

    const-string v3, "Bind"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
