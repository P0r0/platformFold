.class Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;
.super Ljava/lang/Object;
.source "AddFollowUserFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 155
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 10
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, "hash":[B
    const/4 v1, 0x0

    .line 162
    .local v1, "account":Lmobisocial/longdan/LDProtocols$LDContactProfile;
    :try_start_2
    move-object v0, p1

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    move-object v5, v0

    invoke-virtual {v5}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v6, v6, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myAccount:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientIdentityUtils;->lookupProfileForAccount(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDContactProfile;

    move-result-object v1

    .line 163
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    iget-object v5, v5, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v6, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfilePictureLink:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B
    :try_end_21
    .catch Lmobisocial/omlib/exception/NetworkException; {:try_start_2 .. :try_end_21} :catch_57

    move-result-object v3

    .line 166
    :goto_22
    if-eqz v1, :cond_56

    .line 167
    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Identities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 168
    .local v4, "ident":Lmobisocial/longdan/LDProtocols$LDIdentity;
    const-string v6, "omlet"

    iget-object v7, v4, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 169
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    iget-object v6, v4, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    iput-object v6, v5, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->myOmletId:Ljava/lang/String;

    .line 173
    .end local v4    # "ident":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_46
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    invoke-virtual {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 174
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_56

    .line 175
    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;

    invoke-direct {v5, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment$8;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 187
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_56
    return-void

    .line 164
    :catch_57
    move-exception v5

    goto :goto_22
.end method
