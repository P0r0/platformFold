.class Lcom/u8/sdk/ViVoSDK$OrderTask;
.super Landroid/os/AsyncTask;
.source "ViVoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/ViVoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/u8/sdk/PayParams;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/U8Order;",
        ">;"
    }
.end annotation


# instance fields
.field private payParams:Lcom/u8/sdk/PayParams;

.field final synthetic this$0:Lcom/u8/sdk/ViVoSDK;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/ViVoSDK;Ljava/lang/String;)V
    .registers 3
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->this$0:Lcom/u8/sdk/ViVoSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->url:Ljava/lang/String;

    .line 251
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;
    .registers 4
    .param p1, "args"    # [Lcom/u8/sdk/PayParams;

    .prologue
    .line 260
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    .line 262
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-static {v0, v1}, Lcom/u8/sdk/U8OrderUtils;->getOrder(Ljava/lang/String;Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Lcom/u8/sdk/PayParams;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/ViVoSDK$OrderTask;->doInBackground([Lcom/u8/sdk/PayParams;)Lcom/u8/sdk/U8Order;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/U8Order;)V
    .registers 4
    .param p1, "order"    # Lcom/u8/sdk/U8Order;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->this$0:Lcom/u8/sdk/ViVoSDK;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/u8/sdk/ViVoSDK;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/ViVoSDK;->access$1(Lcom/u8/sdk/ViVoSDK;Landroid/app/Activity;)V

    .line 267
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->this$0:Lcom/u8/sdk/ViVoSDK;

    iget-object v1, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->payParams:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/ViVoSDK;->onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V

    .line 268
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lcom/u8/sdk/U8Order;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/ViVoSDK$OrderTask;->onPostExecute(Lcom/u8/sdk/U8Order;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/u8/sdk/ViVoSDK$OrderTask;->this$0:Lcom/u8/sdk/ViVoSDK;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u53f7\uff0c\u8bf7\u7a0d\u540e..."

    # invokes: Lcom/u8/sdk/ViVoSDK;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/u8/sdk/ViVoSDK;->access$0(Lcom/u8/sdk/ViVoSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 255
    return-void
.end method
