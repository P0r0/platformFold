.class final Lmobisocial/omlib/client/ClientAuthUtils$10;
.super Ljava/lang/Object;
.source "ClientAuthUtils.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientAuthUtils;->promptLogout(Lmobisocial/omlib/api/OmletApiManager;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apiManager:Lmobisocial/omlib/api/OmletApiManager;

.field final synthetic val$onLoggedOut:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmobisocial/omlib/api/OmletApiManager;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 559
    iput-object p1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$apiManager:Lmobisocial/omlib/api/OmletApiManager;

    iput-object p2, p0, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$onLoggedOut:Ljava/lang/Runnable;

    iput-object p3, p0, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 559
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlib/client/ClientAuthUtils$10;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 5
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 563
    invoke-interface {p1}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v1

    invoke-interface {v1}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 600
    :goto_a
    return-void

    .line 565
    :cond_b
    new-instance v0, Lmobisocial/omlib/client/ClientAuthUtils$10$1;

    invoke-direct {v0, p0}, Lmobisocial/omlib/client/ClientAuthUtils$10$1;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$10;)V

    .line 592
    .local v0, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v1, p0, Lmobisocial/omlib/client/ClientAuthUtils$10;->val$activity:Landroid/app/Activity;

    new-instance v2, Lmobisocial/omlib/client/ClientAuthUtils$10$2;

    invoke-direct {v2, p0, v0}, Lmobisocial/omlib/client/ClientAuthUtils$10$2;-><init>(Lmobisocial/omlib/client/ClientAuthUtils$10;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a
.end method
