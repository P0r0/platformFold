.class Lcom/u8/sdk/BaiduSDK$8;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->setSuspendWindowChangeAccountListener()V
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
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$8;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$8;->onResponse(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/Void;

    .prologue
    .line 220
    sparse-switch p1, :sswitch_data_18

    .line 234
    :goto_3
    return-void

    .line 223
    :sswitch_4
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/U8SDK;->onSwitchAccount(Ljava/lang/String;)V

    goto :goto_3

    .line 228
    .end local v0    # "token":Ljava/lang/String;
    :sswitch_10
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onLogout()V

    goto :goto_3

    .line 220
    :sswitch_data_18
    .sparse-switch
        -0x15 -> :sswitch_10
        0x0 -> :sswitch_4
    .end sparse-switch
.end method
