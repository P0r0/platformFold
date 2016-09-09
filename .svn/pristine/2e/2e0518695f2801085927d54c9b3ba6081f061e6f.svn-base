.class Lcom/gionee/game/offlinesdk/common/GamePayer$1;
.super Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;
.source "GamePayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/common/GamePayer;->pay(Lcom/gionee/game/offlinesdk/OrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

.field final synthetic val$payMethod:I

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/standalone/CreateOrderForStandalone;Landroid/app/ProgressDialog;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V
    .registers 7
    .param p2, "x0"    # Lcom/gionee/gsp/standalone/CreateOrderForStandalone;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iput-object p3, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    iput p5, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payMethod:I

    iput-object p6, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;-><init>(Lcom/gionee/gsp/standalone/CreateOrderForStandalone;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gionee/gsp/GnOrderInfo;)V
    .registers 6
    .param p1, "gnOrderInfo"    # Lcom/gionee/gsp/GnOrderInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 73
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    iget v2, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payMethod:I

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$userId:Ljava/lang/String;

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePayer;->payInner(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V
    invoke-static {v0, p1, v1, v2, v3}, Lcom/gionee/game/offlinesdk/common/GamePayer;->access$200(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/game/offlinesdk/PayCallback;ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 57
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 58
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateOrder exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "stateCode":Ljava/lang/String;
    const-string v4, "description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iget-object v5, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v3, v0}, Lcom/gionee/game/offlinesdk/common/GamePayer;->access$000(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3d} :catch_3e

    .line 68
    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "stateCode":Ljava/lang/String;
    :goto_3d
    return-void

    .line 65
    :catch_3e
    move-exception v1

    .line 66
    .local v1, "e1":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->this$0:Lcom/gionee/game/offlinesdk/common/GamePayer;

    iget-object v5, p0, Lcom/gionee/game/offlinesdk/common/GamePayer$1;->val$payCallback:Lcom/gionee/game/offlinesdk/PayCallback;

    const-string v6, "6002"

    # invokes: Lcom/gionee/game/offlinesdk/common/GamePayer;->dealResult(Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/gionee/game/offlinesdk/common/GamePayer;->access$100(Lcom/gionee/game/offlinesdk/common/GamePayer;Lcom/gionee/game/offlinesdk/PayCallback;Ljava/lang/String;)V

    goto :goto_3d
.end method
