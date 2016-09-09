.class final Lcom/vivo/sdkplugin/activity/dN;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/net/HttpResponed;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dN;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/vivo/sdkplugin/activity/dN;-><init>(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILandroid/graphics/Bitmap;)V
    .registers 5

    return-void
.end method

.method public final respond(Lcom/vivo/sdkplugin/net/HttpConnect;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 10

    invoke-virtual {p1}, Lcom/vivo/sdkplugin/net/HttpConnect;->disconnect()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/dN;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12c

    if-ne p3, v1, :cond_20

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_16
    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dN;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->d(Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_20
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dN;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/dN;->a:Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "vivo_get_data_network_error"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_16
.end method
