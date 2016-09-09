.class Lcom/u8/sdk/U8CocosActivity$CallBackTask;
.super Landroid/os/AsyncTask;
.source "U8CocosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/U8CocosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field methodName:Ljava/lang/String;

.field final synthetic this$0:Lcom/u8/sdk/U8CocosActivity;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/U8CocosActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->this$0:Lcom/u8/sdk/U8CocosActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->methodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->doInBackground([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    # getter for: Lcom/u8/sdk/U8CocosActivity;->mActivity:Lcom/u8/sdk/U8CocosActivity;
    invoke-static {}, Lcom/u8/sdk/U8CocosActivity;->access$0()Lcom/u8/sdk/U8CocosActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->this$0:Lcom/u8/sdk/U8CocosActivity;

    iget-object v1, p0, Lcom/u8/sdk/U8CocosActivity$CallBackTask;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/u8/sdk/U8CocosActivity;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
