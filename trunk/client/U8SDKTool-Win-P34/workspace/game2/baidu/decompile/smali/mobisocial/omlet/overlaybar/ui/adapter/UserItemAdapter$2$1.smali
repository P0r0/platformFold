.class Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2$1;
.super Ljava/lang/Object;
.source "UserItemAdapter.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;

    .prologue
    .line 163
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 163
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 168
    :try_start_0
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2$1;->this$1:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter$2;->val$user:Lmobisocial/longdan/LDProtocols$LDUser;

    iget-object v2, v2, Lmobisocial/longdan/LDProtocols$LDUser;->Account:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->followUser(Ljava/lang/String;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_12
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_12} :catch_13

    .line 172
    :goto_12
    return-void

    .line 169
    :catch_13
    move-exception v0

    .line 170
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    const-string v1, "UserItemAdapter"

    const-string v2, "Error following user"

    invoke-static {v1, v2, v0}, Lmobisocial/util/OMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
