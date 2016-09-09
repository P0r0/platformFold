.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;
.super Landroid/os/AsyncTask;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->run(Lmobisocial/omlib/api/OmletApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

.field final synthetic val$omletApi:Lmobisocial/omlib/api/OmletApi;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;Lmobisocial/omlib/api/OmletApi;)V
    .registers 3
    .param p1, "this$1"    # Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    .prologue
    .line 616
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 620
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getMyAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 621
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, "account":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0, v6}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setMyAccount(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_3c

    .line 624
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object v6, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    .line 626
    .end local v6    # "account":Ljava/lang/String;
    :cond_3c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 628
    :try_start_44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->getAccountsFolowed(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;

    move-result-object v7

    .line 629
    .local v7, "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v7, Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;->AccountsFollowed:Ljava/util/List;

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    .line 630
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 631
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v9, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v3, v3, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v3

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FooterView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, v9, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/UserItemAdapter;

    .line 635
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 641
    .end local v7    # "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    :goto_9f
    return-object v0

    .line 633
    .restart local v7    # "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    :cond_a0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a4
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_44 .. :try_end_a4} :catch_a6

    move-result-object v0

    goto :goto_9f

    .line 636
    .end local v7    # "accountsFollowedResponse":Lmobisocial/longdan/LDProtocols$LDGetAccountsFollowedResponse;
    :catch_a6
    move-exception v8

    .line 637
    .local v8, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v8}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 638
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9f

    .line 641
    .end local v8    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_af
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 616
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 646
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 647
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 660
    :cond_10
    :goto_10
    return-void

    .line 649
    :cond_11
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-boolean v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->val$doSigninIfNeeded:Z

    if-nez v0, :cond_68

    .line 650
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1000(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 651
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    const/4 v1, 0x0

    # setter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_DoSetProfile:Z
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1002(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Z)Z

    .line 652
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1100(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1100(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 653
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBitmapToSend:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1100(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->serverSetProfilePicture(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1200(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Landroid/graphics/Bitmap;)V

    .line 658
    :cond_68
    :goto_68
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_FollowItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 655
    :cond_8f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getUserProfile()V
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$1300(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)V

    goto :goto_68
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 616
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
