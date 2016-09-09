.class Lcom/u8/sdk/VivoSDK$InitialPayTask;
.super Landroid/os/AsyncTask;
.source "VivoSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/VivoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialPayTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/NameValuePair;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private payParams:Lcom/u8/sdk/PayParams;

.field final synthetic this$0:Lcom/u8/sdk/VivoSDK;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/VivoSDK;Lcom/u8/sdk/PayParams;)V
    .registers 3
    .param p2, "payParams"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;

    .line 190
    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/PayParams;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->payParams:Lcom/u8/sdk/PayParams;

    return-object v0
.end method

.method static synthetic access$3(Lcom/u8/sdk/VivoSDK$InitialPayTask;)Lcom/u8/sdk/VivoSDK;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 4
    .param p1, "nameValuePairs"    # [Lorg/apache/http/NameValuePair;

    .prologue
    .line 202
    new-instance v0, Lsinglepay/network/NetworkRequestAgent;

    invoke-direct {v0}, Lsinglepay/network/NetworkRequestAgent;-><init>()V

    .line 203
    .local v0, "networkRequestAgent":Lsinglepay/network/NetworkRequestAgent;
    invoke-virtual {v0, p1}, Lsinglepay/network/NetworkRequestAgent;->initialPayment([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "resultInfo":Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/VivoSDK$InitialPayTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/VivoSDK$InitialPayTask$1;-><init>(Lcom/u8/sdk/VivoSDK$InitialPayTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method protected onPreExecute()V
    .registers 7

    .prologue
    .line 194
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    .line 195
    const/4 v2, 0x0

    const-string v3, "\u6b63\u5728\u521d\u59cb\u5316\u652f\u4ed8\uff0c\u8bf7\u7a0d\u7b49..."

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 194
    invoke-static {v1, v2, v3, v4, v5}, Lcom/u8/sdk/UtilTool;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/u8/sdk/VivoSDK;->access$1(Lcom/u8/sdk/VivoSDK;Landroid/app/ProgressDialog;)V

    .line 196
    iget-object v0, p0, Lcom/u8/sdk/VivoSDK$InitialPayTask;->this$0:Lcom/u8/sdk/VivoSDK;

    # getter for: Lcom/u8/sdk/VivoSDK;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/u8/sdk/VivoSDK;->access$2(Lcom/u8/sdk/VivoSDK;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 197
    return-void
.end method
