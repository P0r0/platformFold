.class Lcom/ltayx/pay/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ltayx/pay/a;


# direct methods
.method constructor <init>(Lcom/ltayx/pay/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ltayx/pay/b;->a:Lcom/ltayx/pay/a;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 275
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 276
    iget-object v1, p0, Lcom/ltayx/pay/b;->a:Lcom/ltayx/pay/a;

    invoke-static {v1}, Lcom/ltayx/pay/a;->c(Lcom/ltayx/pay/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ltayx/pay/SdkPayServer;->getmResultCBHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 278
    invoke-static {}, Lcom/ltayx/pay/SdkPayServer;->getInstance()Lcom/ltayx/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ltayx/pay/SdkPayServer;->getmResultCBHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    :cond_26
    return-void
.end method
