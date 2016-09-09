.class final Lcom/baidu/sapi2/share/a$3;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .registers 4

    .prologue
    .line 239
    iput-object p1, p0, Lcom/baidu/sapi2/share/a$3;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/baidu/sapi2/share/a$3;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/sapi2/share/a$3;->c:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 242
    move-object v0, p0

    .line 243
    .local v0, "binderTask":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/baidu/sapi2/share/a$3;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 245
    :try_start_9
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v3, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/sapi2/share/a$3;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    new-instance v4, Lcom/baidu/sapi2/share/a$3$1;

    invoke-direct {v4, p0, v0}, Lcom/baidu/sapi2/share/a$3$1;-><init>(Lcom/baidu/sapi2/share/a$3;Ljava/lang/Runnable;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_21} :catch_22

    .line 286
    :cond_21
    :goto_21
    return-void

    .line 282
    :catch_22
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method
