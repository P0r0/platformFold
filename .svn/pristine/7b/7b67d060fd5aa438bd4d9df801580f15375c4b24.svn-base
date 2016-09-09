.class final Lcom/baidu/android/pushservice/message/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .registers 5

    iput-wide p1, p0, Lcom/baidu/android/pushservice/message/a/e;->a:J

    iput-object p3, p0, Lcom/baidu/android/pushservice/message/a/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSP LAST_INTERNAL_BIND_TIME, newLastTime is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/android/pushservice/message/a/e;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/e;->b:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.internal.bind.LATEST_TIME"

    iget-wide v2, p0, Lcom/baidu/android/pushservice/message/a/e;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/util/l;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/a/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/message/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindParams is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/baidu/android/pushservice/e/c;->b(Ljava/util/HashMap;)V

    const-string v2, "device_type"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "params"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpUtil.execRequest! INTERNAL_BIND_URL: http://api.tuisong.baidu.com/rest/3.0/oem/upload_unbind_oem"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "http://api.tuisong.baidu.com/rest/3.0/oem/upload_unbind_oem"

    const-string v3, "POST"

    const-string v4, "BCCS_SDK/3.0"

    invoke-static {v2, v3, v1, v4}, Lcom/baidu/android/pushservice/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Lcom/baidu/android/pushservice/f/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_81

    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code == 200, HTTP POST success!"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_80
    return-void

    :cond_81
    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/f/b;->b()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", HTTP POST unsuccess!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a5} :catch_a9

    const/4 v2, 0x2

    if-lt v0, v2, :cond_5a

    goto :goto_80

    :catch_a9
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/message/a/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80
.end method
