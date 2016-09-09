.class final Lcom/alipay/sdk/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/sdk/util/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 44
    invoke-static {}, Lcom/alipay/sdk/util/d;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 46
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "errorTag"

    iget-object v4, p0, Lcom/alipay/sdk/util/e;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {}, Lcom/alipay/sdk/util/d;->b()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 52
    invoke-static {}, Lcom/alipay/sdk/net/b;->a()Lcom/alipay/sdk/net/b;

    .line 53
    invoke-static {}, Lcom/alipay/sdk/net/b;->a()Lcom/alipay/sdk/net/b;

    .line 54
    sget-object v0, Lcom/alipay/sdk/net/b;->b:Lcom/alipay/sdk/net/b;

    invoke-static {}, Lcom/alipay/sdk/util/d;->b()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/net/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/alipay/sdk/net/c;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v2, "Http Post Response:"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_41
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3e

    .line 59
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3e

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 58
    :catch_41
    move-exception v0

    goto :goto_3c
.end method
