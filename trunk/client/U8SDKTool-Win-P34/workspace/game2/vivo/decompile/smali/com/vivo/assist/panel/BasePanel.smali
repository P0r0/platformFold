.class public abstract Lcom/vivo/assist/panel/BasePanel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vivo/assist/panel/Panel;


# instance fields
.field protected mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

.field protected mContext:Landroid/content/Context;

.field protected mFunctionViewMap:Ljava/util/HashMap;

.field protected mPanelLayoutone:Landroid/view/ViewGroup;

.field protected mPanelLayouttwo:Landroid/view/ViewGroup;

.field protected mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Lcom/vivo/assist/panel/BasePanel;->createPanelViewone(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayoutone:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p3}, Lcom/vivo/assist/panel/BasePanel;->createPanelViewtwo(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object p1, p0, Lcom/vivo/assist/panel/BasePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/assist/panel/BasePanel;->mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

    return-void
.end method


# virtual methods
.method public addFunction(Landroid/content/Context;II)V
    .registers 7

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-static {p1, p2}, Lcom/vivo/assist/function/FunctionFactory;->createFunction(Landroid/content/Context;I)Lcom/vivo/assist/function/Function;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/panel/BasePanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/assist/panel/BasePanel;->createFunctionButtonView(Landroid/content/Context;Lcom/vivo/assist/function/Function;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    if-gt p3, v0, :cond_2f

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayoutone:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_2f
    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c
.end method

.method public clearFunctions()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayoutone:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected abstract createFunctionButtonView(Landroid/content/Context;Lcom/vivo/assist/function/Function;)Landroid/view/View;
.end method

.method protected abstract createPanelViewone(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
.end method

.method protected abstract createPanelViewtwo(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public getPanelLayouttwoVisiblity()I
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayouttwo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    return v0
.end method

.method protected abstract giftShowNotification()Landroid/view/View;
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vivo/assist/function/Function;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mTargetPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/assist/function/Function;

    iget-object v0, v0, Lcom/vivo/assist/function/Function;->command:Lcom/vivo/assist/command/Command;

    iget-object v1, p0, Lcom/vivo/assist/panel/BasePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivo/assist/panel/BasePanel;->mTargetPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/assist/panel/BasePanel;->mAssistWindowManager:Lcom/vivo/assist/AssistWindowManager;

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/assist/command/Command;->excute(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/assist/AssistWindowManager;)V

    :cond_1d
    return-void
.end method

.method protected abstract personalShowNotification()Landroid/view/View;
.end method

.method public removeFunction(I)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/vivo/assist/panel/BasePanel;->mPanelLayoutone:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/vivo/assist/panel/BasePanel;->mFunctionViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method public setGiftShowNotification(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/assist/panel/BasePanel;->giftShowNotification()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/vivo/assist/panel/BasePanel;->giftShowNotification()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public setPersonalShowNotification(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/vivo/assist/panel/BasePanel;->personalShowNotification()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/vivo/assist/panel/BasePanel;->personalShowNotification()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public updateTargetPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/panel/BasePanel;->mTargetPackageName:Ljava/lang/String;

    return-void
.end method
