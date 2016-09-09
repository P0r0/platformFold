.class final Lcom/bbkmobile/iqoo/payment/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bbkmobile/iqoo/payment/network/HttpResponedSDK;


# instance fields
.field private synthetic a:Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;


# direct methods
.method private constructor <init>(Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/bbkmobile/iqoo/payment/util/d;->a:Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbkmobile/iqoo/payment/util/d;-><init>(Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;)V

    return-void
.end method


# virtual methods
.method public final respond(Lcom/bbkmobile/iqoo/payment/network/HttpConnectSDK;Ljava/lang/Object;ILjava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Lcom/bbkmobile/iqoo/payment/network/HttpConnectSDK;->disconnect()V

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/d;->a:Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;->c(Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-string v0, "ManagePamentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connStatus="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", RegisteResponed.in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12c

    if-ne p3, v0, :cond_49

    :try_start_2f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "stat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_74

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x23

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_49} :catch_6e

    :cond_49
    :goto_49
    const-string v0, "ManagePamentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message.obj ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/bbkmobile/iqoo/payment/util/d;->a:Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;

    invoke-static {v0}, Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;->c(Lcom/bbkmobile/iqoo/payment/util/ManagePamentReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_69
    const/16 v0, 0x22

    :try_start_6b
    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_6d} :catch_6e

    goto :goto_49

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_49

    nop

    :pswitch_data_74
    .packed-switch 0xc8
        :pswitch_69
    .end packed-switch
.end method
