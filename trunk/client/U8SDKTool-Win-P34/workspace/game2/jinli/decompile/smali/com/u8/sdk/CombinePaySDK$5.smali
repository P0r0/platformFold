.class Lcom/u8/sdk/CombinePaySDK$5;
.super Ljava/lang/Object;
.source "CombinePaySDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/CombinePaySDK;->unicomPay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/CombinePaySDK;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/CombinePaySDK;Lcom/u8/sdk/PayParams;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/CombinePaySDK$5;->this$0:Lcom/u8/sdk/CombinePaySDK;

    iput-object p2, p0, Lcom/u8/sdk/CombinePaySDK$5;->val$params:Lcom/u8/sdk/PayParams;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    iget-object v0, p0, Lcom/u8/sdk/CombinePaySDK$5;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/CombinePaySDK$5;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getUnicomCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 286
    iget-object v0, p0, Lcom/u8/sdk/CombinePaySDK$5;->this$0:Lcom/u8/sdk/CombinePaySDK;

    # getter for: Lcom/u8/sdk/CombinePaySDK;->billsDic:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/u8/sdk/CombinePaySDK;->access$0(Lcom/u8/sdk/CombinePaySDK;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/CombinePaySDK$5;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getUnicomCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$5;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_23
    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/CombinePaySDK$5;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v2}, Lcom/u8/sdk/PayParams;->getUnicomCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/u8/sdk/CombinePaySDK$5;->this$0:Lcom/u8/sdk/CombinePaySDK;

    iget-object v3, v3, Lcom/u8/sdk/CombinePaySDK;->unicomListener:Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unicom/dcLoader/Utils;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;)V

    .line 288
    return-void
.end method