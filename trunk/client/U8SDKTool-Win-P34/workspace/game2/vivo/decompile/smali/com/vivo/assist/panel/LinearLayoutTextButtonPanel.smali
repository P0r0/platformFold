.class public Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;
.super Lcom/vivo/assist/panel/BasePanel;


# static fields
.field public static final ACCOUNT:I = 0x3

.field public static final ACTIVITY:I = 0x5

.field public static final FORUM:I = 0x1

.field public static final GIFT:I = 0x2

.field public static final HIDE:I = 0x4

.field public static final STRATERY:I


# instance fields
.field public mArrow:Landroid/widget/ImageView;

.field public mEidtButton:Landroid/widget/TextView;

.field public mVivolistviewitemdottedlineimage:Landroid/widget/ImageView;

.field public mgiftShowNotificationArrow:Landroid/widget/ImageView;

.field public mpersonalShowNotificationArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/assist/panel/BasePanel;-><init>(Landroid/content/Context;Lcom/vivo/assist/AssistWindowManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createFunctionButtonView(Landroid/content/Context;Lcom/vivo/assist/function/Function;)Landroid/view/View;
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v2, "dimen"

    const-string v3, "assist_textview_width"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v3, "dimen"

    const-string v4, "assist_textview_height"

    invoke-static {v2, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "greet_item"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "action_text"

    invoke-static {v0, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "action_check"

    invoke-static {v0, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "action_image"

    invoke-static {v0, v4, v5}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mVivolistviewitemdottedlineimage:Landroid/widget/ImageView;

    iget v0, p2, Lcom/vivo/assist/function/Function;->id:I

    packed-switch v0, :pswitch_data_da

    :pswitch_6b
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/vivo/assist/function/Function;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_72
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mVivolistviewitemdottedlineimage:Landroid/widget/ImageView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->icon:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3

    :pswitch_82
    sget-object v0, Lcom/vivo/assist/widget/AssistView;->giftShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8f
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mgiftShowNotificationArrow:Landroid/widget/ImageView;

    goto :goto_72

    :pswitch_9b
    sget-object v0, Lcom/vivo/assist/widget/AssistView;->personalShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a8
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mpersonalShowNotificationArrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_72

    :pswitch_b4
    sget-object v0, Lcom/vivo/assist/widget/AssistView;->activityShowNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c1
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_72

    :pswitch_c9
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_72

    :pswitch_d1
    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mEidtButton:Landroid/widget/TextView;

    iget v4, p2, Lcom/vivo/assist/function/Function;->title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_72

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_c9
        :pswitch_82
        :pswitch_9b
        :pswitch_6b
        :pswitch_b4
    .end packed-switch
.end method

.method protected createPanelViewone(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 6

    const-string v0, "LinearLayoutTextButtonPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createPanelView"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id"

    const-string v1, "float_view_window_bg_layout_first"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected createPanelViewtwo(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 6

    const-string v0, "LinearLayoutTextButtonPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createPanelView"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id"

    const-string v1, "float_view_window_bg_layout_second"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected giftShowNotification()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mgiftShowNotificationArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected personalShowNotification()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/vivo/assist/panel/LinearLayoutTextButtonPanel;->mpersonalShowNotificationArrow:Landroid/widget/ImageView;

    return-object v0
.end method
