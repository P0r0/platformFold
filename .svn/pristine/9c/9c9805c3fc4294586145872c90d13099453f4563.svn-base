.class Lcom/u8/sdk/OppoSDK$2;
.super Ljava/lang/Object;
.source "OppoSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/SinglePayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OppoSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OppoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OppoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OppoSDK$2;->this$0:Lcom/u8/sdk/OppoSDK;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallCarrierPay(Lcom/nearme/game/sdk/common/model/biz/PayInfo;Z)V
    .registers 6
    .param p1, "payInfo"    # Lcom/nearme/game/sdk/common/model/biz/PayInfo;
    .param p2, "bySelectSMSPay"    # Z

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p2, :cond_d

    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u8fd0\u8425\u5546\u652f\u4ed8"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 88
    :goto_c
    return-void

    .line 86
    :cond_d
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u7f51\u7edc"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public onFailure(Ljava/lang/String;I)V
    .registers 6
    .param p1, "resultMsg"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    const/16 v2, 0xb

    .line 70
    const/16 v0, 0x3ec

    if-eq v0, p2, :cond_10

    .line 71
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 76
    :goto_f
    return-void

    .line 74
    :cond_10
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_f
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 65
    return-void
.end method
