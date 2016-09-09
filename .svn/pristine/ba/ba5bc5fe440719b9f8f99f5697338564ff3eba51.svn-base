.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;)V
    .registers 2
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;

    .prologue
    .line 339
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 339
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 6
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 344
    :try_start_0
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    iget-object v1, v1, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6$1;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$6;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->followUser(Ljava/lang/String;Z)Lmobisocial/longdan/LDProtocols$LDSimpleResponse;
    :try_end_12
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_0 .. :try_end_12} :catch_13

    .line 348
    :goto_12
    return-void

    .line 345
    :catch_13
    move-exception v0

    .line 346
    .local v0, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v0}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    goto :goto_12
.end method
