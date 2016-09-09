.class final Lcom/baidu/bdgame/sdk/obf/ek$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ek;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ek;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ek;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ek$1;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$1;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 72
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$1;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ek;->b(Lcom/baidu/bdgame/sdk/obf/ek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 75
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 76
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$1;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->c(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 82
    :goto_28
    return-void

    .line 78
    :catch_29
    move-exception v0

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$1;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->c(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28
.end method
