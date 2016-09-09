.class public Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;
.super Landroid/app/Activity;
.source "ScreenshotEditActivity.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_ID:Ljava/lang/String; = "extra_package_id"

.field public static final EXTRA_SCREENSHOT_PATH:Ljava/lang/String; = "extra_screenshot_path"


# instance fields
.field private final TAG_EDITOR_CONTENT:Ljava/lang/String;

.field _CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

.field _ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field _ContentRelativeLayout:Landroid/widget/RelativeLayout;

.field _CurrentFilePath:Ljava/lang/String;

.field _FragmentManager:Landroid/app/FragmentManager;

.field _ScreenshotPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 34
    const-string v0, "editor_content"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->TAG_EDITOR_CONTENT:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CurrentFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 116
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->resetVideoRecovery(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CurrentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 122
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->finish()V

    .line 129
    :goto_b
    return-void

    .line 124
    :cond_c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "editor_content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;

    if-eqz v0, :cond_25

    .line 125
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "editor_content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;->onBackPressed()V

    .line 127
    :cond_25
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 59
    const-string v0, "omp_activity_screenshot_edit"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->setContentView(I)V

    .line 60
    const-string v0, "relative_layout_close_button"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    .line 61
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const-string v0, "relative_layout_video_editor_overlay_container"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 70
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;)V

    .line 71
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_screenshot_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CurrentFilePath:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CurrentFilePath:Ljava/lang/String;

    if-nez v0, :cond_74

    .line 73
    const-string v0, "omp_screenshot_could_not_be_found"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_74
    return-void
.end method

.method public onUploadComplete()V
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->setCurrentFilePath(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_CurrentFilePath:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public showScreen(Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;)V
    .registers 9
    .param p1, "screenType"    # Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "fragment":Landroid/app/Fragment;
    sget-object v4, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$2;->$SwitchMap$mobisocial$omlet$overlaybar$ui$activity$ScreenshotEditActivity$Screen:[I

    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity$Screen;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_8c

    .line 99
    :goto_c
    if-eqz v2, :cond_37

    .line 100
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 101
    .local v3, "ft":Landroid/app/FragmentTransaction;
    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    if-eqz v4, :cond_7f

    .line 102
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_FragmentManager:Landroid/app/FragmentManager;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 103
    .local v1, "currentFragment":Landroid/app/Fragment;
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 104
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 109
    .end local v1    # "currentFragment":Landroid/app/Fragment;
    :goto_34
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 111
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_37
    return-void

    .line 82
    :pswitch_38
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ScreenshotPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    if-nez v4, :cond_43

    .line 83
    new-instance v4, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    invoke-direct {v4}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;-><init>()V

    iput-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ScreenshotPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .line 85
    :cond_43
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ScreenshotPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotPreviewFragment;

    .line 86
    goto :goto_c

    .line 88
    :pswitch_46
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;-><init>()V

    .line 89
    .restart local v2    # "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "type"

    sget-object v5, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "path"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_package_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 93
    const-string v4, "package_id"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_package_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_7b
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_c

    .line 107
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_7f
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/ScreenshotEditActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    const-string v5, "editor_content"

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_34

    .line 80
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_46
    .end packed-switch
.end method
