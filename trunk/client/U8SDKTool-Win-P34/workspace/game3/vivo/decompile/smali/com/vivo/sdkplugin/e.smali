.class final Lcom/vivo/sdkplugin/e;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/GetUserInfoManager;


# direct methods
.method public constructor <init>(Lcom/vivo/sdkplugin/GetUserInfoManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/e;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "GetUserInfoManager"

    const-string v1, "-------MSG_GET_USER_INFO--------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_d
    iget-object v0, p0, Lcom/vivo/sdkplugin/e;->a:Lcom/vivo/sdkplugin/GetUserInfoManager;

    invoke-static {v0}, Lcom/vivo/sdkplugin/GetUserInfoManager;->a(Lcom/vivo/sdkplugin/GetUserInfoManager;)Ljava/util/Map;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_5

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
