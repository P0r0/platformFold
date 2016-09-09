.class Lcom/u8/sdk/ViVoSDK$6;
.super Ljava/lang/Object;
.source "ViVoSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ViVoSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ViVoSDK;Lcom/u8/sdk/PayParams;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$6;->this$0:Lcom/u8/sdk/ViVoSDK;

    iput-object p2, p0, Lcom/u8/sdk/ViVoSDK$6;->val$params:Lcom/u8/sdk/PayParams;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 279
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "U8_ORDER_URL"

    invoke-static {v2, v3}, Lcom/u8/sdk/SDKTools;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "orderUrl":Ljava/lang/String;
    const-string v2, "U8SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the order url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/u8/sdk/ViVoSDK$OrderTask;

    iget-object v2, p0, Lcom/u8/sdk/ViVoSDK$6;->this$0:Lcom/u8/sdk/ViVoSDK;

    invoke-direct {v0, v2, v1}, Lcom/u8/sdk/ViVoSDK$OrderTask;-><init>(Lcom/u8/sdk/ViVoSDK;Ljava/lang/String;)V

    .line 282
    .local v0, "orderTask":Lcom/u8/sdk/ViVoSDK$OrderTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/u8/sdk/PayParams;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/u8/sdk/ViVoSDK$6;->val$params:Lcom/u8/sdk/PayParams;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/u8/sdk/ViVoSDK$OrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    return-void
.end method
