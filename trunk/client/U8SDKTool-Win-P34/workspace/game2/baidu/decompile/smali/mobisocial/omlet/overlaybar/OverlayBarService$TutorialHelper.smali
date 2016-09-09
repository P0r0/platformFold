.class Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;
.super Ljava/lang/Object;
.source "OverlayBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlet/overlaybar/OverlayBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TutorialHelper"
.end annotation


# instance fields
.field _OmplayTutorialContainer:Landroid/view/View;

.field _UpdateTutorialUiRunnable:Ljava/lang/Runnable;

.field _UpdateTutorialUiRunnable2:Ljava/lang/Runnable;

.field buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

.field clickFingerAnimatorSet:Landroid/animation/AnimatorSet;

.field clickPointAnimatorSet:Landroid/animation/AnimatorSet;

.field disableTutorialCheckBox:Landroid/widget/CheckBox;

.field mTutorial_page:I

.field omplayButtonImageView:Landroid/widget/ImageView;

.field omplayButtonTextView:Landroid/widget/TextView;

.field omplayButtonViewGroup:Landroid/view/View;

.field omplayTutorialFinger:Landroid/widget/ImageView;

.field omplayTutorialHintContainer:Landroid/view/View;

.field omplayTutorialHintText:Landroid/widget/TextView;

.field omplayTutorialOK:Landroid/widget/TextView;

.field omplayTutorialPoint:Landroid/widget/ImageView;

.field overlayBackground:Landroid/view/View;

.field overlayShortcutBar:Landroid/view/View;

.field shortcutCamera:Landroid/view/View;

.field shortcutCameraBackground:Landroid/view/View;

.field shortcutRecord:Landroid/view/View;

.field shortcutRecordBackground:Landroid/view/View;

.field final synthetic this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

.field translationAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lmobisocial/omlet/overlaybar/OverlayBarService;)V
    .registers 3
    .param p1, "this$0"    # Lmobisocial/omlet/overlaybar/OverlayBarService;

    .prologue
    .line 1188
    iput-object p1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    const/4 v0, 0x0

    iput v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1380
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$3;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable:Ljava/lang/Runnable;

    .line 1436
    new-instance v0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;

    invoke-direct {v0, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$4;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    iput-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable2:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$4500(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1188
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->updateState()V

    return-void
.end method

.method static synthetic access$4600(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1188
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutNone()V

    return-void
.end method

.method static synthetic access$4700(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1188
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutCamera()V

    return-void
.end method

.method static synthetic access$4800(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1188
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->highlightShortcutRecord()V

    return-void
.end method

.method static synthetic access$4900(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V
    .registers 1
    .param p0, "x0"    # Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;

    .prologue
    .line 1188
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->finishTutorial()V

    return-void
.end method

.method private addTutorial()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v1, -0x1

    .line 1233
    iput v7, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->mTutorial_page:I

    .line 1234
    sget-object v2, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    .line 1235
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 1236
    .local v6, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "omp_omplay_tutorial"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    .line 1237
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "tutorial_ok"

    invoke-static {v3, v4}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialOK:Landroid/widget/TextView;

    .line 1238
    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialOK:Landroid/widget/TextView;

    new-instance v3, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;

    invoke-direct {v3, p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$1;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1253
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4200(Lmobisocial/omlet/overlaybar/OverlayBarService;)I

    move-result v3

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->getFullscreen()I
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4300(Lmobisocial/omlet/overlaybar/OverlayBarService;)I

    move-result v2

    or-int/lit8 v4, v2, 0x8

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1254
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1400(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "view_group_omplay_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonViewGroup:Landroid/view/View;

    .line 1258
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "image_view_omplay_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonImageView:Landroid/widget/ImageView;

    .line 1259
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1260
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "text_view_omplay_button"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonTextView:Landroid/widget/TextView;

    .line 1262
    :cond_b7
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_finger"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialFinger:Landroid/widget/ImageView;

    .line 1263
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_point"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialPoint:Landroid/widget/ImageView;

    .line 1264
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_hint_container"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialHintContainer:Landroid/view/View;

    .line 1265
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_hint_text"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayTutorialHintText:Landroid/widget/TextView;

    .line 1266
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "background"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    .line 1267
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_LayoutParamsTYPE:I
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4200(Lmobisocial/omlet/overlaybar/OverlayBarService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12f

    .line 1269
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1271
    :cond_12f
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "shortcut_bar"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayShortcutBar:Landroid/view/View;

    .line 1272
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "shortcut_record"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    .line 1273
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "shortcut_record_background"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecordBackground:Landroid/view/View;

    .line 1274
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "shortcut_camera"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    .line 1275
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "shortcut_camera_background"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCameraBackground:Landroid/view/View;

    .line 1276
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tutorial_disable"

    invoke-static {v2, v3}, Lmobisocial/util/ResUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    .line 1277
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1278
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1279
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->overlayBackground:Landroid/view/View;

    new-instance v2, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;

    iget-object v3, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v3}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper$2;-><init>(Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1300
    return-void
.end method

.method private finishTutorial()V
    .registers 3

    .prologue
    .line 1323
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_13

    .line 1324
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->disableTutorialCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lmobisocial/omlet/overlaybar/util/OmpPreferences;->setTutorialOverlayBarPref(Landroid/content/Context;Z)V

    .line 1326
    :cond_13
    invoke-virtual {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->removeTutorial()V

    .line 1327
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_OmplayButtonContainer:Landroid/view/View;
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$500(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    return-void
.end method

.method private highlightShortcutCamera()V
    .registers 4

    .prologue
    .line 1365
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_record_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1366
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_screenshot_selected_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1367
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F
    invoke-static {}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4400()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1368
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F
    invoke-static {}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4400()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1369
    return-void
.end method

.method private highlightShortcutNone()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1372
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_record_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1373
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_screenshot_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1374
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1375
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1376
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1377
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1378
    return-void
.end method

.method private highlightShortcutRecord()V
    .registers 4

    .prologue
    .line 1358
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecordBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_record_selected_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1359
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCameraBackground:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_switch_screenshot_normal_bg"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1360
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F
    invoke-static {}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4400()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1361
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_SHORTCUT_SCALE_FACTOR:F
    invoke-static {}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$4400()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1362
    return-void
.end method

.method private modifyButtonGraphicScreenshot()V
    .registers 4

    .prologue
    .line 1351
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_tool_screenshot"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1352
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 1353
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_button_screenshot"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1355
    :cond_2e
    return-void
.end method

.method private modifyButtonGraphicVideo()V
    .registers 4

    .prologue
    .line 1344
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_btn_tool_record"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1345
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->_IsBaidu:Z
    invoke-static {v0}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1000(Lmobisocial/omlet/overlaybar/OverlayBarService;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2e

    .line 1346
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->omplayButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    # getter for: Lmobisocial/omlet/overlaybar/OverlayBarService;->context:Landroid/content/Context;
    invoke-static {v1}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$1200(Lmobisocial/omlet/overlaybar/OverlayBarService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "omp_button_record_video"

    invoke-static {v1, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1348
    :cond_2e
    return-void
.end method

.method private updateState()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1331
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->buttonState:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    sget-object v1, Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;->VIDEO:Lmobisocial/omlet/overlaybar/OverlayBarService$ActionState;

    if-ne v0, v1, :cond_17

    .line 1332
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->modifyButtonGraphicVideo()V

    .line 1333
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1341
    :goto_16
    return-void

    .line 1337
    :cond_17
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->modifyButtonGraphicScreenshot()V

    .line 1338
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutRecord:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->shortcutCamera:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method


# virtual methods
.method public removeTutorial()V
    .registers 5

    .prologue
    .line 1304
    :try_start_0
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 1305
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1306
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1307
    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->this$0:Lmobisocial/omlet/overlaybar/OverlayBarService;

    iget-object v2, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    # invokes: Lmobisocial/omlet/overlaybar/OverlayBarService;->removeViewSafe(Landroid/view/View;)V
    invoke-static {v1, v2}, Lmobisocial/omlet/overlaybar/OverlayBarService;->access$3800(Lmobisocial/omlet/overlaybar/OverlayBarService;Landroid/view/View;)V

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1313
    :cond_1c
    :goto_1c
    return-void

    .line 1310
    :catch_1d
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OverlayBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTutorial() got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public showTutorial()V
    .registers 3

    .prologue
    .line 1316
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    if-nez v0, :cond_7

    .line 1317
    invoke-direct {p0}, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->addTutorial()V

    .line 1319
    :cond_7
    iget-object v0, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_OmplayTutorialContainer:Landroid/view/View;

    iget-object v1, p0, Lmobisocial/omlet/overlaybar/OverlayBarService$TutorialHelper;->_UpdateTutorialUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method
