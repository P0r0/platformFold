.class final Lcom/baidu/sapi2/utils/StatService$1;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "StatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/utils/StatService;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiConfiguration;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/baidu/sapi2/SapiConfiguration;Ljava/lang/String;)V
    .registers 4
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p2, p0, Lcom/baidu/sapi2/utils/StatService$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iput-object p3, p0, Lcom/baidu/sapi2/utils/StatService$1;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected onSuccess(ILjava/lang/String;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/sapi2/utils/StatService$1;->a:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/utils/StatService$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/b;->d(Ljava/lang/String;)V

    .line 87
    return-void
.end method
