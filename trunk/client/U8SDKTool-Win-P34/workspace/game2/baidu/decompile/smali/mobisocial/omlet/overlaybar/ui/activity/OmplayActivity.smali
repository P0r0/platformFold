.class public Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;
.super Landroid/app/Activity;
.source "OmplayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;,
        Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$OnBackPressedListener;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_ID:Ljava/lang/String; = "extra_package_id"

.field public static final REQUEST_IMAGE_CAPTURE:I = 0x1


# instance fields
.field private final TagContent:Ljava/lang/String;

.field _Button0:Landroid/view/View;

.field _Button1:Landroid/view/View;

.field _Button1Overlay:Landroid/view/View;

.field _Button3:Landroid/view/View;

.field _Button3Overlay:Landroid/view/View;

.field _Button4:Landroid/view/View;

.field _Button4Overlay:Landroid/view/View;

.field _Button5:Landroid/view/View;

.field _Button5Overlay:Landroid/view/View;

.field _CloseFrame:Landroid/view/View;

.field _ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field _ContentFrame:Landroid/widget/RelativeLayout;

.field private _FragmentManager:Landroid/app/FragmentManager;

.field private _MyAccount:Ljava/lang/String;

.field _NotiCount:Landroid/widget/TextView;

.field _TutorialProfileView:Landroid/view/View;

.field _TutorialView:Landroid/view/View;

.field apiManager:Lmobisocial/omlib/api/OmletApiManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->apiManager:Lmobisocial/omlib/api/OmletApiManager;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 95
    const-string v0, "content"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->TagContent:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_MyAccount:Ljava/lang/String;

    return-void
.end method

.method private cleanButtonOverlay()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 294
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button1Overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button3Overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button4Overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button5Overlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    return-void
.end method


# virtual methods
.method public dismissActivity()V
    .registers 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->finish()V

    .line 205
    return-void
.end method

.method public getMyAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_MyAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 303
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->finish()V

    .line 310
    :goto_b
    return-void

    .line 305
    :cond_c
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$OnBackPressedListener;

    if-eqz v0, :cond_25

    .line 306
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$OnBackPressedListener;

    invoke-interface {v0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$OnBackPressedListener;->onBackPressed()V

    .line 308
    :cond_25
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    .line 103
    invoke-virtual {p0, v4}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 105
    const-string v1, "omp_omplay_frame"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->setContentView(I)V

    .line 106
    const-string v1, "close_frame"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_CloseFrame:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_CloseFrame:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const-string v1, "view_group_tutorial"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialView:Landroid/view/View;

    .line 115
    const-string v1, "view_group_tutorial_profile"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialProfileView:Landroid/view/View;

    .line 116
    const-string v1, "content_frame"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 118
    const-string v1, "button0"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button0:Landroid/view/View;

    .line 119
    const-string v1, "button1"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button1:Landroid/view/View;

    .line 120
    const-string v1, "button3"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button3:Landroid/view/View;

    .line 121
    const-string v1, "button4"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button4:Landroid/view/View;

    .line 122
    const-string v1, "button5"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button5:Landroid/view/View;

    .line 123
    const-string v1, "button1_active_overlay"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button1Overlay:Landroid/view/View;

    .line 124
    const-string v1, "button3_active_overlay"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button3Overlay:Landroid/view/View;

    .line 125
    const-string v1, "button4_active_overlay"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button4Overlay:Landroid/view/View;

    .line 126
    const-string v1, "button5_active_overlay"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button5Overlay:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button0:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$2;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button0:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 152
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button0:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$3;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 166
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button1:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$4;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$4;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button3:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$5;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$5;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button4:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$6;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$6;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button5:Landroid/view/View;

    new-instance v3, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$7;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$7;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    sget-object v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->LATEST:Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;

    new-array v3, v2, [Landroid/os/Bundle;

    invoke-virtual {p0, v1, v3}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V

    .line 196
    const-string v1, "noti_count"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_NotiCount:Landroid/widget/TextView;

    .line 197
    const/4 v0, 0x7

    .line 198
    .local v0, "notiCount":I
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_NotiCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v3, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_NotiCount:Landroid/widget/TextView;

    if-lez v0, :cond_14e

    move v1, v2

    :goto_144
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-static {}, Lmobisocial/omlib/api/OmletApiManager;->getInstance()Lmobisocial/omlib/api/OmletApiManager;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->apiManager:Lmobisocial/omlib/api/OmletApiManager;

    .line 201
    return-void

    .line 199
    :cond_14e
    const/16 v1, 0x8

    goto :goto_144
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 340
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->apiManager:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v1, p0}, Lmobisocial/omlib/api/OmletApiManager;->connect(Landroid/content/Context;)V

    .line 341
    invoke-static {p0}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->getTutorialProfilePref(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 342
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialView:Landroid/view/View;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$8;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$8;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    const-string v1, "omp_tutorial_right_to_left"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 352
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_TutorialProfileView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 353
    new-instance v1, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;

    invoke-direct {v1, p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$9;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 369
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setTutorialProfilePref(Landroid/content/Context;Z)V

    .line 371
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_39
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 376
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->apiManager:Lmobisocial/omlib/api/OmletApiManager;

    invoke-virtual {v0, p0}, Lmobisocial/omlib/api/OmletApiManager;->disconnect(Landroid/content/Context;)V

    .line 377
    return-void
.end method

.method public setMyAccount(Ljava/lang/String;)V
    .registers 2
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 327
    if-nez p1, :cond_4

    .line 328
    const-string p1, ""

    .line 330
    :cond_4
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_MyAccount:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setOverlayToFullScreen()V
    .registers 5

    .prologue
    .line 313
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 314
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_CloseFrame:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    return-void
.end method

.method public showOverlayDefaultSize()V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentContainerLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_CloseFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    return-void
.end method

.method public varargs showScreen(Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;[Landroid/os/Bundle;)V
    .registers 12
    .param p1, "screenType"    # Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;
    .param p2, "bundles"    # [Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "fragment":Landroid/app/Fragment;
    sget-object v4, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$10;->$SwitchMap$mobisocial$omlet$overlaybar$ui$activity$OmplayActivity$ScreenType:[I

    invoke-virtual {p1}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity$ScreenType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_162

    .line 272
    :cond_e
    :goto_e
    if-eqz v2, :cond_6b

    .line 273
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    iget-object v5, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 274
    .local v1, "currentFragment":Landroid/app/Fragment;
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 275
    .local v3, "ft":Landroid/app/FragmentTransaction;
    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    if-nez v4, :cond_2a

    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    if-eqz v4, :cond_45

    .line 276
    :cond_2a
    const-string v4, "omp_slide_in"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "omp_fade_out"

    invoke-static {p0, v5}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string v6, "omp_fade_in"

    invoke-static {p0, v6}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    const-string v7, "omp_slide_down"

    invoke-static {p0, v7}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 277
    :cond_45
    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    if-nez v4, :cond_59

    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    if-nez v4, :cond_59

    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    if-nez v4, :cond_59

    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    if-nez v4, :cond_59

    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    if-eqz v4, :cond_137

    .line 278
    :cond_59
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 279
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 280
    invoke-virtual {v3, v8}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 289
    :goto_68
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 291
    .end local v1    # "currentFragment":Landroid/app/Fragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_6b
    return-void

    .line 211
    :pswitch_6c
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->cleanButtonOverlay()V

    .line 212
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button1Overlay:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 213
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/LatestFragment;-><init>()V

    .line 214
    .restart local v2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_package_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "package_id"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_package_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 221
    .end local v0    # "b":Landroid/os/Bundle;
    :pswitch_9e
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->cleanButtonOverlay()V

    .line 222
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button3Overlay:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/FollowingFragment;-><init>()V

    .line 224
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_e

    .line 226
    :pswitch_ad
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;-><init>()V

    .line 227
    .restart local v2    # "fragment":Landroid/app/Fragment;
    array-length v4, p2

    if-lez v4, :cond_bc

    .line 228
    aget-object v4, p2, v6

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 230
    :cond_bc
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->cleanButtonOverlay()V

    .line 231
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button4Overlay:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 235
    :pswitch_c6
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->cleanButtonOverlay()V

    .line 236
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_Button5Overlay:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 237
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/NotificationFragment;-><init>()V

    .line 239
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_e

    .line 241
    :pswitch_d5
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideoDetailsFragment;-><init>()V

    .line 242
    .restart local v2    # "fragment":Landroid/app/Fragment;
    array-length v4, p2

    if-lez v4, :cond_e

    .line 243
    aget-object v4, p2, v6

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 247
    :pswitch_e4
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ScreenshotDetailsFragment;-><init>()V

    .line 248
    .restart local v2    # "fragment":Landroid/app/Fragment;
    array-length v4, p2

    if-lez v4, :cond_e

    .line 249
    aget-object v4, p2, v6

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 253
    :pswitch_f3
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/VideosByTagFragment;-><init>()V

    .line 254
    .restart local v2    # "fragment":Landroid/app/Fragment;
    const/4 v0, 0x0

    .line 255
    .restart local v0    # "b":Landroid/os/Bundle;
    array-length v4, p2

    if-lez v4, :cond_123

    .line 256
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    aget-object v4, p2, v6

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 260
    .restart local v0    # "b":Landroid/os/Bundle;
    :goto_103
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_package_id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 261
    const-string v4, "package_id"

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_package_id"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_11e
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_e

    .line 258
    :cond_123
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "b":Landroid/os/Bundle;
    goto :goto_103

    .line 266
    .end local v0    # "b":Landroid/os/Bundle;
    :pswitch_129
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/AddFollowUserFragment;-><init>()V

    .line 267
    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_e

    .line 269
    :pswitch_130
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lmobisocial/omlet/overlaybar/ui/fragment/ShareToPeopleFragment;-><init>()V

    .restart local v2    # "fragment":Landroid/app/Fragment;
    goto/16 :goto_e

    .line 281
    .restart local v1    # "currentFragment":Landroid/app/Fragment;
    .restart local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_137
    instance-of v4, v2, Lmobisocial/omlet/overlaybar/ui/fragment/ProfileFragment;

    if-eqz v4, :cond_14f

    array-length v4, p2

    if-lez v4, :cond_14f

    .line 282
    invoke-virtual {v3, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 283
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 284
    invoke-virtual {v3, v8}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_68

    .line 286
    :cond_14f
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_ContentFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    const-string v5, "content"

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 287
    iget-object v4, p0, Lmobisocial/omlet/overlaybar/ui/activity/OmplayActivity;->_FragmentManager:Landroid/app/FragmentManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v8, v5}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto/16 :goto_68

    .line 209
    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_9e
        :pswitch_ad
        :pswitch_c6
        :pswitch_d5
        :pswitch_e4
        :pswitch_f3
        :pswitch_129
        :pswitch_130
    .end packed-switch
.end method
