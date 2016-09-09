.class Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils$10$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmobisocial/omlib/service/util/ServiceRunnable",
        "<",
        "Lmobisocial/omlib/api/OmletApi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlib/client/ClientAuthUtils$10$1;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientAuthUtils$10$1;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    .prologue
    .line 571
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 571
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 577
    :try_start_0
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->logout()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1f

    .line 581
    :goto_7
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$onLoggedOut:Ljava/lang/Runnable;

    if-eqz v1, :cond_1e

    .line 582
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v1, v1, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lmobisocial/omlib/client/ClientAuthUtils$10$1$1;->this$1:Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientAuthUtils$10$1;->this$0:Lmobisocial/omlib/client/ClientAuthUtils$10;

    iget-object v2, v2, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$onLoggedOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    :cond_1e
    return-void

    .line 578
    :catch_1f
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "omlib"

    const-string v2, "Logout failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
