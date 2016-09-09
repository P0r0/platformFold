.class final Lcom/vivo/sdkplugin/g;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/GetVerifyCodeManager;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/GetVerifyCodeManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/g;->a:Lcom/vivo/sdkplugin/GetVerifyCodeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "GetVerifyCodeManager"

    const-string v1, "-------MSG_GET_VERIFY_CODE--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/g;->a:Lcom/vivo/sdkplugin/GetVerifyCodeManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetVerifyCodeManager;->a(Lcom/vivo/sdkplugin/GetVerifyCodeManager;)V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
