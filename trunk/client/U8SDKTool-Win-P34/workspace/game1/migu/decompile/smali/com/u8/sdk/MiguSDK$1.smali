.class Lcom/u8/sdk/MiguSDK$1;
.super Ljava/lang/Object;
.source "MiguSDK.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/MiguSDK;->initSDK(Lcom/u8/sdk/SDKParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/MiguSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/MiguSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/MiguSDK$1;->this$0:Lcom/u8/sdk/MiguSDK;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "billingIndex"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0xb

    .line 50
    const-string v0, ""

    .line 51
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_8e

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u53d6\u6d88\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay cancel"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 71
    :goto_25
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    return-void

    .line 53
    :pswitch_36
    const-string v1, "10"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 54
    const-string v0, "\u77ed\u4fe1\u8ba1\u8d39\u8d85\u65f6"

    .line 55
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay cancel"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_25

    .line 57
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "pay success"

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_25

    .line 63
    :pswitch_6f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8d2d\u4e70\u9053\u5177\uff1a["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u5931\u8d25\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay fail"

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_25

    .line 51
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_6f
    .end packed-switch
.end method
