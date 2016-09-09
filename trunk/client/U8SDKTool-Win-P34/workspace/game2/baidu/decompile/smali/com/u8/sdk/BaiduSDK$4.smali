.class Lcom/u8/sdk/BaiduSDK$4;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->login()V
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
        "Ljava/lang/Void;",
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
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$4;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$4;->onResponse(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 10
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/Void;

    .prologue
    const/4 v5, 0x5

    .line 123
    const-string v2, "login"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this resultCode is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sparse-switch p1, :sswitch_data_4a

    .line 142
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const-string v3, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v2, v5, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 144
    :goto_21
    return-void

    .line 127
    :sswitch_22
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginUid()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/u8/sdk/BaiduSDK$4;->this$0:Lcom/u8/sdk/BaiduSDK;

    invoke-virtual {v2}, Lcom/u8/sdk/BaiduSDK;->showFloatView()V

    goto :goto_21

    .line 137
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    :sswitch_3f
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const-string v3, "\u53d6\u6d88\u767b\u5f55"

    invoke-virtual {v2, v5, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_21

    .line 124
    nop

    :sswitch_data_4a
    .sparse-switch
        -0x14 -> :sswitch_3f
        0x0 -> :sswitch_22
    .end sparse-switch
.end method
