.class public Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "UploadCompleteActivity.java"


# static fields
.field public static final EXTRA_IS_SCREENSHOT:Ljava/lang/String; = "is_screenshot"

.field public static final EXTRA_SHARE_LINK:Ljava/lang/String; = "share_link"


# instance fields
.field public mLinkClicked:Z

.field private mScreenshot:Z

.field share_link:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 33
    const-string v0, "https://omlet.me"

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mLinkClicked:Z

    .line 37
    iput-boolean v1, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mScreenshot:Z

    return-void
.end method

.method private uiSetShareLinkText()Landroid/widget/TextView;
    .registers 8

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 144
    iget-boolean v3, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mLinkClicked:Z

    if-eqz v3, :cond_56

    .line 145
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "omp_purple_text_663366"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 147
    .local v0, "colorResource":I
    :goto_15
    const-string v3, "open_link"

    invoke-static {p0, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 148
    .local v1, "openShareLink":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 149
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 150
    .local v2, "span":Landroid/text/Spannable;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v3, v5, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 151
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v3, v5, v4, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 152
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    return-object v1

    .line 146
    .end local v0    # "colorResource":I
    .end local v1    # "openShareLink":Landroid/widget/TextView;
    .end local v2    # "span":Landroid/text/Spannable;
    :cond_56
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "omp_omlet_blue"

    invoke-static {p0, v4}, Lmobisocial/util/ResUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method public dismissActivity()V
    .registers 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->finish()V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->setResult(I)V

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFlags(II)V

    .line 47
    const-string v2, "omp_activity_upload_complete"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->setContentView(I)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->setFinishOnTouchOutside(Z)V

    .line 49
    const-string v2, "omp_config_flavor"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "baidu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 50
    const-string v2, "open_18183"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_43
    const-string v2, "omp_upload_complete"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getAnim(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 53
    .local v14, "uploadCompleteAnimation":Landroid/view/animation/Animation;
    const-string v2, "ic_complete"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 54
    .local v9, "ic_complete":Landroid/widget/ImageView;
    const-string v2, "circularprogressbar"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;

    .line 55
    .local v1, "c1":Lcom/lylc/widget/circularprogressbar/CircularProgressBar;
    const/4 v2, 0x0

    const/16 v3, 0x64

    const-wide/16 v4, 0x258

    new-instance v6, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$1;

    invoke-direct {v6, p0, v9, v14}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$1;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    invoke-virtual/range {v1 .. v6}, Lcom/lylc/widget/circularprogressbar/CircularProgressBar;->animateProgressTo(IIJLcom/lylc/widget/circularprogressbar/CircularProgressBar$ProgressAnimationListener;)V

    .line 72
    const-string v2, "close_button"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "closeFrame":Landroid/view/View;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$2;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$2;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b5

    .line 81
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "share_link"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_screenshot"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mScreenshot:Z

    .line 85
    :cond_b5
    const-string v2, "share_link"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 86
    .local v13, "share_link_view":Landroid/widget/TextView;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v2, "copy_link_btn"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 88
    .local v7, "copy_link_btn":Landroid/widget/TextView;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$3;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$3;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v2, "share_to_others"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 96
    .local v12, "shareToOthersBtn":Landroid/view/View;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$4;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const-string v2, "omp_config_flavor"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "baidu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 111
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_103
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    if-eqz v2, :cond_12f

    .line 114
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->share_link:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "host":Ljava/lang/String;
    const-string v2, "18183"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_121

    const-string v2, "baidu"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 116
    :cond_121
    const-string v2, "open_18183"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .end local v8    # "host":Ljava/lang/String;
    :cond_12f
    const-string v2, "open_18183"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 119
    .local v10, "open18183":Landroid/widget/Button;
    iget-boolean v2, p0, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->mScreenshot:Z

    if-eqz v2, :cond_148

    .line 120
    const-string v2, "omp_open_18183_screenshot"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setText(I)V

    .line 122
    :cond_148
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$5;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$5;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->uiSetShareLinkText()Landroid/widget/TextView;

    move-result-object v11

    .line 132
    .local v11, "openShareLink":Landroid/widget/TextView;
    new-instance v2, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;

    invoke-direct {v2, p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity$6;-><init>(Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 159
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/ui/activity/UploadCompleteActivity;->uiSetShareLinkText()Landroid/widget/TextView;

    .line 160
    return-void
.end method
