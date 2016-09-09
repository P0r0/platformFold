.class Lcom/baidu/sapi2/share/a$1;
.super Ljava/lang/Object;
.source "SapiShareClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/a;->a(Lcom/baidu/sapi2/SapiAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/baidu/sapi2/SapiAccount;

.field final synthetic d:Landroid/os/HandlerThread;

.field final synthetic e:Lcom/baidu/sapi2/share/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/share/a;Ljava/util/List;Landroid/os/Handler;Lcom/baidu/sapi2/SapiAccount;Landroid/os/HandlerThread;)V
    .registers 6

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/sapi2/share/a$1;->e:Lcom/baidu/sapi2/share/a;

    iput-object p2, p0, Lcom/baidu/sapi2/share/a$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/baidu/sapi2/share/a$1;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/baidu/sapi2/share/a$1;->c:Lcom/baidu/sapi2/SapiAccount;

    iput-object p5, p0, Lcom/baidu/sapi2/share/a$1;->d:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 96
    move-object v0, p0

    .line 97
    .local v0, "binderTask":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/baidu/sapi2/share/a$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 99
    :try_start_9
    invoke-static {}, Lcom/baidu/sapi2/share/a;->d()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v2

    iget-object v3, v2, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/sapi2/share/a$1;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    new-instance v4, Lcom/baidu/sapi2/share/a$1$1;

    invoke-direct {v4, p0, v0}, Lcom/baidu/sapi2/share/a$1$1;-><init>(Lcom/baidu/sapi2/share/a$1;Ljava/lang/Runnable;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_21} :catch_22

    .line 140
    :cond_21
    :goto_21
    return-void

    .line 136
    :catch_22
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_21
.end method
