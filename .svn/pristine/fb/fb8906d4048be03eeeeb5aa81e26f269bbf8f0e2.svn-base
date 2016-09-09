.class public Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;
.super Landroid/app/Activity;
.source "SigninActivity.java"

# interfaces
.implements Lmobisocial/omlib/ui/signin/SignInFragment$SignInActivityCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "SignInFragment"


# instance fields
.field signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFinished()V
    .registers 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->finish()V

    .line 65
    return-void
.end method

.method public onCloseButtonClicked(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->finish()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 26
    const-string v4, "omp_activity_signin"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "webview_fragment"

    invoke-static {p0, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/ui/signin/SignInFragment;

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    .line 28
    if-nez p1, :cond_a5

    .line 29
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SignInFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lmobisocial/omlib/ui/signin/SignInFragment;

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    .line 30
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    if-nez v4, :cond_a5

    .line 31
    new-instance v4, Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-direct {v4}, Lmobisocial/omlib/ui/signin/SignInFragment;-><init>()V

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "sso_type"

    invoke-static {p0}, Lmobisocial/omlet/integration/AccessTokenUtils;->getSsoType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "sso_token"

    invoke-static {p0}, Lmobisocial/omlet/integration/AccessTokenUtils;->getSsoToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 36
    .local v1, "extras":Landroid/os/Bundle;
    const-string v4, "omp_config_flavor"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "partner":Ljava/lang/String;
    const-string v4, "baidu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 38
    const-string v3, "BAIDU"

    .line 41
    :cond_75
    :goto_75
    const-string v4, "partner"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz v1, :cond_87

    .line 43
    const-string v4, "flow"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "flow":Ljava/lang/String;
    const-string v4, "flow"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v2    # "flow":Ljava/lang/String;
    :cond_87
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    invoke-virtual {v4, v0}, Lmobisocial/omlib/ui/signin/SignInFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "webview_fragment"

    invoke-static {p0, v5}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->signInFragment:Lmobisocial/omlib/ui/signin/SignInFragment;

    const-string v7, "SignInFragment"

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 50
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "partner":Ljava/lang/String;
    :cond_a5
    return-void

    .line 39
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "extras":Landroid/os/Bundle;
    .restart local v3    # "partner":Ljava/lang/String;
    :cond_a6
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 40
    const/4 v3, 0x0

    goto :goto_75
.end method

.method public onError(Lmobisocial/omlib/api/OmletApiManager$Error;)V
    .registers 4
    .param p1, "error"    # Lmobisocial/omlib/api/OmletApiManager$Error;

    .prologue
    .line 58
    const-string v0, "oml_auth_error"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/SigninActivity;->finish()V

    .line 60
    return-void
.end method
