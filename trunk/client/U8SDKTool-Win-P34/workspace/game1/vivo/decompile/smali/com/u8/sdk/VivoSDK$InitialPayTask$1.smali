.class Lcom/u8/sdk/VivoSDK$InitialPayTask$1;
.super Ljava/lang/Object;
.source "VivoSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/VivoSDK$InitialPayTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

.field private final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/VivoSDK$InitialPayTask;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    iput-object p2, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->val$result:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 214
    :try_start_0
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    # getter for: Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK;->access$2(Lcom/u8/sdk/VivoSDK;)Landroid/app/ProgressDialog;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 215
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    # getter for: Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK;->access$2(Lcom/u8/sdk/VivoSDK;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/u8/sdk/VivoSDK;->access$1(Lcom/u8/sdk/VivoSDK;Landroid/app/ProgressDialog;)V

    .line 219
    :cond_23
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->val$result:Ljava/lang/String;

    invoke-static {v9}, Lcom/u8/sdk/UtilTool;->checkStringIsNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_140

    .line 220
    # getter for: Lcom/u8/sdk/VivoSDK;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/VivoSDK;->access$3()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "result="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->val$result:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->val$result:Ljava/lang/String;

    invoke-static {v9}, Lcom/u8/sdk/UtilTool;->checkSignatrue(Ljava/lang/String;)Z

    move-result v1

    .line 222
    .local v1, "isSignOk":Z
    if-eqz v1, :cond_134

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->val$result:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, "jsonVo":Lorg/json/JSONObject;
    const-string v9, "respCode"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "respCode":Ljava/lang/String;
    const-string v9, "200"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_118

    .line 230
    const-string v9, "vivoOrder"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "transNo":Ljava/lang/String;
    const-string v9, "vivoSignature"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "signature":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v3, "localBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v9

    .line 236
    invoke-virtual {v9}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "packageName":Ljava/lang/String;
    const-string v9, "transNo"

    .line 237
    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v9, "signature"

    .line 240
    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v9, "package"

    .line 243
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v9, "useWeixinPay"

    .line 248
    const/4 v10, 0x0

    .line 246
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v9, "useMode"

    const-string v10, "00"

    .line 249
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v9, "productDes"

    .line 253
    iget-object v10, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;
    invoke-static {v10}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$2(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/PayParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/u8/sdk/PayParams;->getProductDesc()Ljava/lang/String;

    move-result-object v10

    .line 251
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v9, "productName"

    .line 256
    iget-object v10, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;
    invoke-static {v10}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$2(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/PayParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/u8/sdk/PayParams;->getProductName()Ljava/lang/String;

    move-result-object v10

    .line 254
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v9, "price"

    .line 259
    iget-object v10, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;
    invoke-static {v10}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$2(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/PayParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 257
    invoke-virtual {v3, v9, v10, v11}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 261
    const-string v9, "userId"

    .line 262
    const-string v10, "dkhsky"

    .line 260
    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v9, "signature"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "signe":Ljava/lang/String;
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    # getter for: Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK;->access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_102

    .line 267
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    # getter for: Lcom/u8/sdk/VivoSDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK;->access$0(Lcom/u8/sdk/VivoSDK;)Ljava/util/HashMap;

    move-result-object v9

    iget-object v10, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;
    invoke-static {v10}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$2(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/PayParams;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_102
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    # getter for: Lcom/u8/sdk/VivoSDK;->mVivoUnionManager:Lcom/vivo/sdkplugin/aidl/VivoUnionManager;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK;->access$4(Lcom/u8/sdk/VivoSDK;)Lcom/vivo/sdkplugin/aidl/VivoUnionManager;

    move-result-object v9

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v10

    invoke-virtual {v10}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/vivo/sdkplugin/aidl/VivoUnionManager;->singlePayment(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 283
    .end local v1    # "isSignOk":Z
    .end local v2    # "jsonVo":Lorg/json/JSONObject;
    .end local v3    # "localBundle":Landroid/os/Bundle;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "respCode":Ljava/lang/String;
    .end local v6    # "signature":Ljava/lang/String;
    .end local v7    # "signe":Ljava/lang/String;
    .end local v8    # "transNo":Ljava/lang/String;
    :goto_117
    return-void

    .line 271
    .restart local v1    # "isSignOk":Z
    .restart local v2    # "jsonVo":Lorg/json/JSONObject;
    .restart local v5    # "respCode":Ljava/lang/String;
    :cond_118
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    const-string v10, "\u521d\u59cb\u5316\u652f\u4ed8\u5931\u8d25"

    # invokes: Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/u8/sdk/VivoSDK;->access$5(Lcom/u8/sdk/VivoSDK;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_123} :catch_124

    goto :goto_117

    .line 279
    .end local v1    # "isSignOk":Z
    .end local v2    # "jsonVo":Lorg/json/JSONObject;
    .end local v5    # "respCode":Ljava/lang/String;
    :catch_124
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    const-string v10, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    # invokes: Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/u8/sdk/VivoSDK;->access$5(Lcom/u8/sdk/VivoSDK;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_117

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isSignOk":Z
    :cond_134
    :try_start_134
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    const-string v10, "\u4ea4\u6613\u4fe1\u606f\u88ab\u7be1\u6539"

    # invokes: Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/u8/sdk/VivoSDK;->access$5(Lcom/u8/sdk/VivoSDK;Ljava/lang/String;)V

    goto :goto_117

    .line 277
    .end local v1    # "isSignOk":Z
    :cond_140
    iget-object v9, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;->this$1:Lcom/u8/sdk/VivoSDK$InitialPayTask;

    # getter for: Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;
    invoke-static {v9}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;

    move-result-object v9

    const-string v10, "\u521d\u59cb\u5316\u652f\u4ed8\u5931\u8d25"

    # invokes: Lcom/u8/sdk/VivoSDK;->showPayMessage(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/u8/sdk/VivoSDK;->access$5(Lcom/u8/sdk/VivoSDK;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_14b} :catch_124

    goto :goto_117
.end method
