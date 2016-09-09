.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lmobisocial/omlib/service/util/ServiceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserProfile()V
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
.field final synthetic this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .prologue
    .line 785
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 785
    check-cast p1, Lmobisocial/omlib/api/OmletApi;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->run(Lmobisocial/omlib/api/OmletApi;)V

    return-void
.end method

.method public run(Lmobisocial/omlib/api/OmletApi;)V
    .registers 9
    .param p1, "omletApi"    # Lmobisocial/omlib/api/OmletApi;

    .prologue
    const/4 v6, 0x0

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "hash":[B
    const/4 v1, 0x0

    .line 792
    .local v1, "account":Lmobisocial/longdan/LDProtocols$LDContactProfile;
    :try_start_3
    move-object v0, p1

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    move-object v4, v0

    invoke-virtual {v4}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Identity:Lmobisocial/omlib/client/ClientIdentityUtils;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/ClientIdentityUtils;->lookupProfileForAccount(Ljava/lang/String;)Lmobisocial/longdan/LDProtocols$LDContactProfile;

    move-result-object v1

    .line 793
    check-cast p1, Lmobisocial/omlib/service/OmlibService;

    .end local p1    # "omletApi":Lmobisocial/omlib/api/OmletApi;
    invoke-virtual {p1}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v4

    iget-object v4, v4, Lmobisocial/omlib/client/LongdanClient;->Blob:Lmobisocial/omlib/client/ClientBlobUtils;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->ProfilePictureLink:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmobisocial/omlib/client/ClientBlobUtils;->hashFromLongdanUrl(Ljava/lang/String;)[B
    :try_end_22
    .catch Lmobisocial/omlib/exception/NetworkException; {:try_start_3 .. :try_end_22} :catch_b5

    move-result-object v2

    .line 796
    :goto_23
    if-eqz v1, :cond_78

    .line 798
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_79

    .line 799
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1402(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetName(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    .line 807
    :cond_3b
    :goto_3b
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)[B

    move-result-object v4

    if-nez v4, :cond_96

    .line 808
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B
    invoke-static {v4, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1602(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;[B)[B

    .line 809
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v4, v5, v6}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile([BLandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    .line 815
    :cond_55
    :goto_55
    iget-object v4, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Identities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobisocial/longdan/LDProtocols$LDIdentity;

    .line 816
    .local v3, "ident":Lmobisocial/longdan/LDProtocols$LDIdentity;
    const-string v5, "omlet"

    iget-object v6, v3, Lmobisocial/longdan/LDProtocols$LDIdentity;->Type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 817
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v3, Lmobisocial/longdan/LDProtocols$LDIdentity;->Principal:Ljava/lang/String;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetOmletId(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1700(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    .line 822
    .end local v3    # "ident":Lmobisocial/longdan/LDProtocols$LDIdentity;
    :cond_78
    return-void

    .line 802
    :cond_79
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 803
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfileName:Ljava/lang/String;
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1402(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 804
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v1, Lmobisocial/longdan/LDProtocols$LDContactProfile;->Name:Ljava/lang/String;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->uiSetName(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1500(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Ljava/lang/String;)V

    goto :goto_3b

    .line 811
    :cond_96
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)[B

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_55

    .line 812
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_CachedProfilePictureHash:[B
    invoke-static {v4, v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1602(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;[B)[B

    .line 813
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$18;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v2, v4, v5, v6}, Lmobisocial/omlet/overlaybar/ui/helper/BitmapLoader;->loadProfile([BLandroid/widget/ImageView;Landroid/content/Context;Landroid/os/CancellationSignal;)V

    goto :goto_55

    .line 794
    :catch_b5
    move-exception v4

    goto/16 :goto_23
.end method
