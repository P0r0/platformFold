.class Lcom/u8/sdk/BaiduSDK$5;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Lcom/baidu/platformsdk/PayOrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/BaiduSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/BaiduSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$5;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V
    .registers 7
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Lcom/baidu/platformsdk/PayOrderInfo;

    .prologue
    const/16 v2, 0xb

    .line 157
    sparse-switch p1, :sswitch_data_30

    .line 171
    :goto_5
    return-void

    .line 159
    :sswitch_6
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 162
    :sswitch_12
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 165
    :sswitch_1c
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 168
    :sswitch_26
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "\u8ba2\u5355\u5df2\u63d0\u4ea4"

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_5

    .line 157
    :sswitch_data_30
    .sparse-switch
        -0x20 -> :sswitch_26
        -0x1f -> :sswitch_1c
        -0x1e -> :sswitch_12
        0x0 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$5;->onResponse(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V

    return-void
.end method
