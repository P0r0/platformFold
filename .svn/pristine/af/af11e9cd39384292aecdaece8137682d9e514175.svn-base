.class Lcom/u8/sdk/ViVoSDK$2;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Lcom/bbk/payment/payment/OnVivoPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$2;->this$0:Lcom/u8/sdk/ViVoSDK;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "resultCode"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "9000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 102
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "pay sucess"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 106
    :goto_13
    return-void

    .line 104
    :cond_14
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_13
.end method

.method public rechargeResult(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z
    .param p3, "resultCode"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    return-void
.end method
