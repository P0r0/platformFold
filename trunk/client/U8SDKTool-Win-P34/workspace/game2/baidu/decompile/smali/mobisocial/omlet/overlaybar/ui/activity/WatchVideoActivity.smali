.class public Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WatchVideoActivity.java"


# static fields
.field public static final EXTRA_BLOB_LINK:Ljava/lang/String; = "BLOB_LINK"

.field public static final EXTRA_HLS_LINK:Ljava/lang/String; = "HLS_LINK"

.field private static final TAG:Ljava/lang/String; = "WatchVideoActivity"


# instance fields
.field private _BlobLink:Ljava/lang/String;

.field private _FragmentManager:Landroid/support/v4/app/FragmentManager;

.field private _HlsLink:Ljava/lang/String;

.field private _LoadingDialog:Landroid/app/ProgressDialog;

.field _MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

.field private _OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

.field private _Url:Ljava/lang/String;

.field _VideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_FragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_HlsLink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_Url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_Url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_BlobLink:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dismissActivity()V
    .registers 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->finish()V

    .line 181
    return-void
.end method

.method public dismissDialog()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_LoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 189
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_FragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 53
    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 55
    const-string v1, "omp_activity_watch_video"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BLOB_LINK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_BlobLink:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_BlobLink:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 66
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_watchVideoActivity_invalid_video"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->dismissActivity()V

    .line 69
    :cond_48
    const-string v1, "HLS_LINK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_HlsLink:Ljava/lang/String;

    .line 70
    const-string v1, "video"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    .line 71
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    .line 72
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;->setAnchorView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_MediaController:Lmobisocial/omlet/overlaybar/ui/view/video/SimpleMediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 84
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_VideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    .line 85
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    .line 86
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 170
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$3;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$3;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 177
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$2;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$2;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 165
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 91
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0, p0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 92
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;)V

    invoke-virtual {v0, v1}, Lmobisocial/omlib/api/OmletApiManager;->run(Lmobisocial/omlib/service/util/ServiceRunnable;)V

    .line 147
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 152
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_OmletHelper:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0, p0}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public showDialog()V
    .registers 5

    .prologue
    .line 184
    const-string v0, "omp_watchVideoActivity_loading_video"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "omp_watchVideoActivity_please_wait"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/WatchVideoActivity;->_LoadingDialog:Landroid/app/ProgressDialog;

    .line 185
    return-void
.end method
