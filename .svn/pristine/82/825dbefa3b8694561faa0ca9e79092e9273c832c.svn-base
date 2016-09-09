.class Lcom/u8/sdk/test/MainActivity$LoginGameTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/test/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginGameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/u8/sdk/test/order/U8Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/test/MainActivity;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/u8/sdk/test/MainActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/u8/sdk/test/order/U8Account;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/u8/sdk/test/order/U8LoginUtils;->login(Ljava/lang/String;)Lcom/u8/sdk/test/order/U8Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->doInBackground([Ljava/lang/Void;)Lcom/u8/sdk/test/order/U8Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/u8/sdk/test/order/U8Account;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    # invokes: Lcom/u8/sdk/test/MainActivity;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/test/MainActivity;->access$1(Lcom/u8/sdk/test/MainActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    invoke-virtual {v0, p1}, Lcom/u8/sdk/test/MainActivity;->onLoginGameSuccess(Lcom/u8/sdk/test/order/U8Account;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/u8/sdk/test/order/U8Account;

    invoke-virtual {p0, p1}, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->onPostExecute(Lcom/u8/sdk/test/order/U8Account;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v0, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    iget-object v1, p0, Lcom/u8/sdk/test/MainActivity$LoginGameTask;->this$0:Lcom/u8/sdk/test/MainActivity;

    const-string v2, "\u6b63\u5728\u767b\u5f55\u6e38\u620f\u670d,\u8bf7\u7a0d\u5019..."

    # invokes: Lcom/u8/sdk/test/MainActivity;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/u8/sdk/test/MainActivity;->access$0(Lcom/u8/sdk/test/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
