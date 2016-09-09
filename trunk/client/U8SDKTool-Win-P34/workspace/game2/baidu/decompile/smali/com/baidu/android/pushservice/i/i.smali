.class public Lcom/baidu/android/pushservice/i/i;
.super Lcom/baidu/android/pushservice/i/p;


# static fields
.field private static e:Lcom/baidu/android/pushservice/i/i;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/android/pushservice/util/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/i/i;->e:Lcom/baidu/android/pushservice/i/i;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/android/pushservice/i/p;-><init>(Landroid/content/Context;)V

    const-string v0, "LbsSender"

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/i;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/i;->d:Lcom/baidu/android/pushservice/util/f;

    const-string v0, "http://lbsonline.pushct.baidu.com/lbsupload"

    iput-object v0, p0, Lcom/baidu/android/pushservice/i/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/android/pushservice/i/i;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/i/i;->e:Lcom/baidu/android/pushservice/i/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/android/pushservice/i/i;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/i/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/i/i;->e:Lcom/baidu/android/pushservice/i/i;

    :cond_b
    sget-object v0, Lcom/baidu/android/pushservice/i/i;->e:Lcom/baidu/android/pushservice/i/i;

    return-object v0
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/i;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/android/pushservice/util/g;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/android/pushservice/util/f;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/i/i;->d:Lcom/baidu/android/pushservice/util/f;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/i;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/android/pushservice/util/g;->a(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/i;->c:Ljava/lang/String;

    const-string v2, "<<< Location info send result return OK!"

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/i;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lbs upload respponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "lbsInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v2, "lbsInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3b} :catch_57

    move-result-object v0

    :goto_3c
    if-eqz v0, :cond_56

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/i;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/util/g;->a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/i;->d:Lcom/baidu/android/pushservice/util/f;

    if-eqz v2, :cond_56

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/i;->d:Lcom/baidu/android/pushservice/util/f;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/baidu/android/pushservice/util/f;->a(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/android/pushservice/i/i;->d:Lcom/baidu/android/pushservice/util/f;

    :cond_56
    return-void

    :catch_57
    move-exception v0

    iget-object v2, p0, Lcom/baidu/android/pushservice/i/i;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    move-object v0, v1

    goto :goto_3c
.end method

.method a(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "method"

    const-string v1, "uploadGeo"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/android/pushservice/i/i;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending LBS data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
