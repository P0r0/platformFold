.class final Lcom/vivo/assist/widget/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/assist/widget/AssistView;


# direct methods
.method constructor <init>(Lcom/vivo/assist/widget/AssistView;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    const/high16 v3, 0x42c80000    # 100.0f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "AssistView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_688

    :cond_25
    :goto_25
    return-void

    :pswitch_26
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v3, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto :goto_25

    :pswitch_5a
    const-string v0, "AssistView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AssistView"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "misRightAlign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-boolean v2, v2, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hidex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget v2, v2, Lcom/vivo/assist/widget/AssistView;->hidex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() / 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShowPanelLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    if-eqz v0, :cond_1d0

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const-string v0, "AssistivePointmisLeftAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawY  - getHeight() / 2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rawX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() / 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShowPanelLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_129

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_14f

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startHideUpdateTask()V

    goto/16 :goto_25

    :cond_129
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-nez v0, :cond_14f

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_14f

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startHideUpdateTask()V

    goto/16 :goto_25

    :cond_14f
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-static {v0, v1}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;I)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->b:[I

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->getLocationOnScreen([I)V

    const-string v0, "AssistivePointmisLeftAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location[1]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_190

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_190
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_1b4
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_1d0
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-boolean v0, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    if-eqz v0, :cond_25

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const-string v0, "AssistivePointmisRightAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawY  - getHeight() / 2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rawX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() / 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_249

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_279

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startHideUpdateTask()V

    goto/16 :goto_25

    :cond_249
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-nez v0, :cond_279

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_279

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopUpdateTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startHideUpdateTask()V

    goto/16 :goto_25

    :cond_279
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->b:[I

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-static {v0, v1}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;I)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_2a9
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_2cd
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :pswitch_2e9
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :pswitch_308
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startUpdateTask()V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    goto/16 :goto_25

    :pswitch_314
    sget-boolean v0, Lcom/vivo/assist/widget/AssistView;->misLeftAlign:Z

    if-eqz v0, :cond_42b

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const-string v0, "AssistivePointmisLeftAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawY  - getHeight() / 2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rawX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth()/2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "misLeftAlign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFirstLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShowPanelLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAssistiveManager.getGetDisplayWidth()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_3b3

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    if-ltz v0, :cond_3cb

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0, v5}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Z)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopHideUpdateTask()V

    goto/16 :goto_25

    :cond_3b3
    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v1}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_3cb

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0, v5}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Z)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopHideUpdateTask()V

    goto/16 :goto_25

    :cond_3cb
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->b:[I

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_3eb

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_3eb
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_40f

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_40f
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_42b
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-boolean v0, v0, Lcom/vivo/assist/widget/AssistView;->misRightAlign:Z

    if-eqz v0, :cond_25

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    const-string v0, "AssistivePointmisRightAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawY  - getHeight() / 2"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawY:I

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v3}, Lcom/vivo/assist/widget/AssistView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rawX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth()/2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "misLeftAlign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFirstLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mShowPanelLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAssistiveManager.getGetDisplayWidth()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_4dd

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_508

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0, v5}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Z)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopHideUpdateTask()V

    goto/16 :goto_25

    :cond_4dd
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-nez v0, :cond_508

    sget v0, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/assist/AssistWindowManager;->getGetDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_508

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0, v5}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;Z)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopHideUpdateTask()V

    goto/16 :goto_25

    :cond_508
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->b:[I

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->c(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_544

    const-string v0, "AssistivePointmisRightAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFirstLoadingrawX- 165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit16 v2, v2, -0xa5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_544
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->b(Lcom/vivo/assist/widget/AssistView;)Z

    move-result v0

    if-eqz v0, :cond_580

    const-string v0, "AssistivePointmisRightAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFirstLoadingrawX- 165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit16 v2, v2, -0xa5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :cond_580
    const-string v0, "AssistivePointmisRightAlign"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rawX- 165"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vivo/assist/widget/AssistView;->rawX:I

    add-int/lit16 v2, v2, -0xa5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->a(Lcom/vivo/assist/widget/AssistView;)Lcom/vivo/assist/AssistWindowManager;

    move-result-object v0

    sget v1, Lcom/vivo/assist/widget/AssistView;->rawX:I

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v2, v2, Lcom/vivo/assist/widget/AssistView;->b:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vivo/assist/AssistWindowManager;->updateHideAssistButtonPos(II)V

    goto/16 :goto_25

    :pswitch_5b4
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->d(Lcom/vivo/assist/widget/AssistView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopTask()V

    const-string v0, "AssistView"

    const-string v1, "AssistView6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "floatview_hide_alpha_anim"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v2}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "anim"

    const-string v4, "floatview_notification_hide_alpha_anim"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v3, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v3}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "small_window_layout"

    invoke-static {v3, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "float_window_notification_icon_right"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_651

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "id"

    const-string v4, "float_window_notification_icon_right"

    invoke-static {v1, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/assist/widget/AssistView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_651
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v0, v0, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->startAssistBgLayoutHideTask()V

    goto/16 :goto_25

    :pswitch_65f
    iget-object v0, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v0}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    invoke-static {v1}, Lcom/vivo/assist/widget/AssistView;->e(Lcom/vivo/assist/widget/AssistView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "anim"

    const-string v3, "floatview_alpha_anim"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/vivo/assist/widget/b;->a:Lcom/vivo/assist/widget/AssistView;

    iget-object v1, v1, Lcom/vivo/assist/widget/AssistView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_25

    :pswitch_data_688
    .packed-switch 0x1
        :pswitch_26
        :pswitch_5a
        :pswitch_2e9
        :pswitch_308
        :pswitch_314
        :pswitch_5b4
        :pswitch_65f
    .end packed-switch
.end method
