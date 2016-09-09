.class Lcom/bestpay/app/H5PayActivity$1;
.super Ljava/lang/Object;
.source "H5PayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/app/H5PayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/app/H5PayActivity;


# direct methods
.method constructor <init>(Lcom/bestpay/app/H5PayActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/app/H5PayActivity$1;->this$0:Lcom/bestpay/app/H5PayActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/bestpay/app/H5PayActivity$1;->this$0:Lcom/bestpay/app/H5PayActivity;

    iget-object v2, p0, Lcom/bestpay/app/H5PayActivity$1;->this$0:Lcom/bestpay/app/H5PayActivity;

    # getter for: Lcom/bestpay/app/H5PayActivity;->mParamStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/bestpay/app/H5PayActivity;->access$4(Lcom/bestpay/app/H5PayActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/bestpay/app/H5PayActivity$1;->this$0:Lcom/bestpay/app/H5PayActivity;

    iget-object v4, v4, Lcom/bestpay/app/H5PayActivity;->mWebKitcookieStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/bestpay/app/H5PayActivity;->sendDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 167
    :goto_11
    return-void

    .line 163
    :catch_12
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
