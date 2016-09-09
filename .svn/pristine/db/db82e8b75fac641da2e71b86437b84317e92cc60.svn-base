.class final Lcom/vivo/sdkplugin/Utils/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/b;->a:Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/b;->a:Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->a(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;)Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
