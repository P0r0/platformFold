.class public Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;
.super Landroid/app/Activity;
.source "VideoEditorActivity.java"

# interfaces
.implements Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_ID:Ljava/lang/String; = "extra_package_id"

.field public static final EXTRA_VIDEO_PATH:Ljava/lang/String; = "extra_video_path"

.field private static final STATE_CURRENT_FILE_PATH:Ljava/lang/String; = "current"

.field private static final STATE_ORIGINAL_FILE_PATH:Ljava/lang/String; = "original"


# instance fields
.field private final TAG_EDITOR_CONTENT:Ljava/lang/String;

.field _CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

.field _ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field _ContentRelativeLayout:Landroid/widget/RelativeLayout;

.field _CurrentFilePath:Ljava/lang/String;

.field _FragmentManager:Landroid/app/FragmentManager;

.field _OriginalFilePath:Ljava/lang/String;

.field _VideoPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 42
    const-string v0, "editor_content"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->TAG_EDITOR_CONTENT:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public clearTempVideoFiles()V
    .registers 6

    .prologue
    .line 110
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "videoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, "videoDir":Ljava/io/File;
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getVideoPathToRecover(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "videoToRecover":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lmobisocial/omlet/overlaybar/util/Misc;->clearDirectory(Ljava/io/File;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 170
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->clearTempVideoFiles()V

    .line 171
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->finish()V

    .line 178
    :goto_e
    return-void

    .line 173
    :cond_f
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "editor_content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;

    if-eqz v0, :cond_28

    .line 174
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "editor_content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/fragment/OnBackPressedListener;->onBackPressed()V

    .line 176
    :cond_28
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 73
    const-string v0, "omp_activity_video_editor"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setContentView(I)V

    .line 74
    const-string v0, "relative_layout_close_button"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    .line 75
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-string v0, "relative_layout_video_editor_overlay_container"

    invoke-static {p0, v0}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 86
    if-nez p1, :cond_6d

    .line 87
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    .line 89
    sget-object v0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->Preview:Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;[Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setVideoPathToRecover(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    :goto_6c
    return-void

    .line 92
    :cond_6d
    const-string v0, "original"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    .line 93
    const-string v0, "current"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    goto :goto_6c
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "original"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_OriginalFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "current"

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onUploadComplete()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->setCurrentFilePath(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public setCurrentFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setOverlayToFullScreen()V
    .registers 5

    .prologue
    .line 189
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public showOverlayDefaultSize()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CloseButtonRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    return-void
.end method

.method public varargs showScreen(Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;[Landroid/os/Bundle;)V
    .registers 11
    .param p1, "screenType"    # Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;
    .param p2, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "fragment":Landroid/app/Fragment;
    sget-object v5, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$2;->$SwitchMap$mobisocial$omlet$overlaybar$ui$activity$VideoEditorActivity$Screen:[I

    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity$Screen;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_be

    .line 153
    :goto_c
    if-eqz v3, :cond_3b

    .line 154
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 155
    .local v4, "ft":Landroid/app/FragmentTransaction;
    instance-of v5, v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    if-nez v5, :cond_1c

    instance-of v5, v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    if-eqz v5, :cond_b1

    .line 156
    :cond_1c
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_FragmentManager:Landroid/app/FragmentManager;

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 157
    .local v2, "currentFragment":Landroid/app/Fragment;
    invoke-virtual {v4, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 158
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 159
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 163
    .end local v2    # "currentFragment":Landroid/app/Fragment;
    :goto_38
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 165
    .end local v4    # "ft":Landroid/app/FragmentTransaction;
    :cond_3b
    return-void

    .line 120
    :pswitch_3c
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_VideoPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    if-nez v5, :cond_58

    .line 121
    new-instance v5, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-direct {v5}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;-><init>()V

    iput-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_VideoPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "path"

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_VideoPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    invoke-virtual {v5, v0}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_58
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_VideoPreviewFragment:Lmobisocial/omlet/overlaybar/ui/fragment/VideoPreviewFragment;

    .line 129
    goto :goto_c

    .line 131
    :pswitch_5b
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;

    .end local v3    # "fragment":Landroid/app/Fragment;
    invoke-direct {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoEditFragment;-><init>()V

    .line 133
    .restart local v3    # "fragment":Landroid/app/Fragment;
    array-length v5, p2

    if-lez v5, :cond_6a

    .line 134
    const/4 v5, 0x0

    aget-object v0, p2, v5

    .line 139
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_66
    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_c

    .line 136
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_6a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v5, "path"

    iget-object v6, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_CurrentFilePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 142
    .end local v0    # "args":Landroid/os/Bundle;
    :pswitch_77
    new-instance v3, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;

    .end local v3    # "fragment":Landroid/app/Fragment;
    invoke-direct {v3}, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;-><init>()V

    .line 143
    .restart local v3    # "fragment":Landroid/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v1, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_package_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 145
    const-string v5, "package_id"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "extra_package_id"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_9c
    const-string v5, "path"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v5, "type"

    sget-object v6, Lmobisocial/omlet/overlaybar/ui/fragment/MediaUploadFragment;->TYPE_VIDEO:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_c

    .line 161
    .end local v1    # "b":Landroid/os/Bundle;
    .restart local v4    # "ft":Landroid/app/FragmentTransaction;
    :cond_b1
    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/VideoEditorActivity;->_ContentRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    const-string v6, "editor_content"

    invoke-virtual {v4, v5, v3, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_38

    .line 118
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_5b
        :pswitch_77
    .end packed-switch
.end method
