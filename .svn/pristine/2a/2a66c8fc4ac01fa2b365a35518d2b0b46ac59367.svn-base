.class final Lcom/baidu/bdgame/sdk/obf/es$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/es;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/es;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/es$1;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    .local p0, "this":Lcom/baidu/bdgame/sdk/obf/es$1;, "Lcom/baidu/bdgame/sdk/obf/es.1;"
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 50
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    :goto_8
    return-void

    .line 38
    :pswitch_9
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es$1;->a:Lcom/baidu/bdgame/sdk/obf/es;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/es;->a(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_5

    .line 51
    :catch_13
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 42
    :pswitch_18
    :try_start_18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$1;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/es;->a()V

    goto :goto_5

    .line 46
    :pswitch_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/es$1;->a:Lcom/baidu/bdgame/sdk/obf/es;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/kk;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v1, v0}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_31} :catch_13

    goto :goto_5

    .line 36
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_9
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
