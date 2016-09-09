.class Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;
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
    .line 577
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iput-object p2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 581
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

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

    .line 582
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletApi;->auth()Lmobisocial/omlib/api/OmletAuthApi;

    move-result-object v0

    invoke-interface {v0}, Lmobisocial/omlib/api/OmletAuthApi;->getAccount()Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "account":Ljava/lang/String;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Activity:Landroid/app/Activity;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$400(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;

    invoke-virtual {v0, v7}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setMyAccount(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ProfileBaseType:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;->OWNER:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileBaseType;

    if-ne v0, v1, :cond_3c

    .line 585
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iput-object v7, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    .line 587
    .end local v7    # "account":Ljava/lang/String;
    :cond_3c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    if-eqz v0, :cond_b8

    .line 589
    :try_start_44
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->val$omletApi:Lmobisocial/omlib/api/OmletApi;

    check-cast v0, Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v0}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    iget-object v0, v0, Lmobisocial/omlib/client/LongdanClient;->Games:Lmobisocial/omlib/client/ClientGameUtils;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UserAccount:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lmobisocial/omlib/client/ClientGameUtils;->getUserWall(Ljava/lang/String;[BI)Lmobisocial/longdan/LDProtocols$LDWallResponse;

    move-result-object v9

    .line 590
    .local v9, "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v1, v9, Lmobisocial/longdan/LDProtocols$LDWallResponse;->Wall:Lmobisocial/longdan/LDProtocols$LDWall;

    iget-object v1, v1, Lmobisocial/longdan/LDProtocols$LDWall;->Posts:Ljava/util/List;

    iput-object v1, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    .line 591
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/helper/UIHelper;->LDPostCreationDateComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 592
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 593
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v10, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    new-instance v0, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v1, v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

    const/4 v3, 0x1

    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v4, v4, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    # getter for: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;
    invoke-static {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$600(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;)Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v4

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v5, v5, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_HeaderView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZLmobisocial/omlib/api/OmletApiManager;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, v10, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_ItemsAdapter:Lmobisocial/omlet/overlaybar/ui/adapter/MediaItemAdapter;

    .line 597
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 603
    .end local v9    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :goto_a8
    return-object v0

    .line 595
    .restart local v9    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :cond_a9
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_ad
    .catch Lmobisocial/longdan/exception/LongdanException; {:try_start_44 .. :try_end_ad} :catch_af

    move-result-object v0

    goto :goto_a8

    .line 598
    .end local v9    # "wallResponse":Lmobisocial/longdan/LDProtocols$LDWallResponse;
    :catch_af
    move-exception v8

    .line 599
    .local v8, "e":Lmobisocial/longdan/exception/LongdanException;
    invoke-virtual {v8}, Lmobisocial/longdan/exception/LongdanException;->printStackTrace()V

    .line 600
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a8

    .line 603
    .end local v8    # "e":Lmobisocial/longdan/exception/LongdanException;
    :cond_b8
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 577
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 609
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    invoke-virtual {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 614
    :cond_10
    :goto_10
    return-void

    .line 611
    :cond_11
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_UploadCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    iget-object v2, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->_Items:Ljava/util/List;

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

    .line 612
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->this$1:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;

    iget-object v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14;->this$0:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    sget-object v1, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;->UPLOAD:Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;

    # invokes: Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->SetProfileTab(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V
    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;->access$700(Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$ProfileTab;)V

    goto :goto_10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 577
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment$14$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
