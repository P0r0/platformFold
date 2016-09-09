.class final Lcom/vivo/sdkplugin/i;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/LoginCenter;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/LoginCenter;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/i;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "LoginCenter"

    const-string v1, "-------MSG_VIVO_LOGIN--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/i;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/LoginCenter;->a(Lcom/vivo/sdkplugin/LoginCenter;)Ljava/util/Map;

    goto :goto_5

    :pswitch_13
    const-string v0, "LoginCenter"

    const-string v1, "-------MSG_TEMP_LOGIN--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/i;->a:Lcom/vivo/sdkplugin/LoginCenter;

    invoke-static {v0}, Lcom/vivo/sdkplugin/LoginCenter;->b(Lcom/vivo/sdkplugin/LoginCenter;)Ljava/util/Map;

    goto :goto_5

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method
