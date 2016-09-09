.class public Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;
.super Landroid/app/Fragment;
.source "NotificationFragment.java"


# instance fields
.field _EmptyView:Landroid/view/View;

.field _ListView:Landroid/widget/ListView;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 37
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "omp_fragment_notification"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "empty_notification"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_EmptyView:Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "notification_listview"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_ListView:Landroid/widget/ListView;

    .line 40
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_ListView:Landroid/widget/ListView;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lmobisocial/omlet/overlaybar/ui/adapter/NotificationItemAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 92
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$3;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$3;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 80
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$2;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 87
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 47
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 48
    .local v0, "context":Landroid/app/Activity;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1, v0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 49
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;

    invoke-direct {v2, p0, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment$1;-><init>(Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 69
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 74
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 75
    return-void
.end method
