.class Lmobisocial/omlib/service/OmlibService$8;
.super Landroid/content/BroadcastReceiver;
.source "OmlibService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 267
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$8;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 273
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 274
    .local v3, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v1, 0x1

    .line 275
    .local v1, "connected":Z
    :goto_15
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$8;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmobisocial/omlib/client/LongdanClient;->postNetworkConnectivityChange(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_21

    .line 279
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "connected":Z
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :goto_1e
    return-void

    .line 274
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v3    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_15

    .line 276
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "netInfo":Landroid/net/NetworkInfo;
    :catch_21
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "OmlibService"

    const-string v5, "Error responding to network connectivity chnage"

    invoke-static {v4, v5, v2}, Lmobisocial/util/OMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method
