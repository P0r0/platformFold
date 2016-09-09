.class public Lcom/vivo/sdkplugin/TempNoticeDialog;
.super Landroid/app/Dialog;


# static fields
.field public static final TEMP_BIND_DIALOG:I = 0x2

.field public static final TEMP_PAY_DIALOG:I = 0x3

.field public static final TEMP_UPDATE_DIALOG:I = 0x1


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

.field private d:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;)V
    .registers 8

    const/4 v2, 0x0

    const-string v0, "style"

    const-string v1, "vivo_upgrade_dialog"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iput-object v2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->d:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    iput-object p3, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iput-object p4, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->d:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    iput p2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    iput-object p1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const-string v0, "style"

    const-string v1, "vivo_upgrade_dialog"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iput-object v2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->d:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    iput-object p1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    iput p2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    iput-object p4, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v1, "string"

    invoke-static {v0, v1, p1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/TempNoticeDialog;)Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->c:Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;

    return-object v0
.end method

.method private a()V
    .registers 9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vivo/sdkplugin/TempNoticeDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "vivo_temp_update_dialog_layout"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/sdkplugin/TempNoticeDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v5}, Lcom/vivo/sdkplugin/TempNoticeDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "temp_update_commit_btn"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "temp_update_cancel_btn"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "temp_update_temp_view"

    invoke-static {v0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "temp_update_title"

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    if-ne v1, v6, :cond_ba

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->b:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vivo_ok_label"

    invoke-direct {p0, v3}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_87
    iget v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    if-ne v1, v6, :cond_c3

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vivo_temp_bind_tips"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->g:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a5
    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->a:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/t;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/t;-><init>(Lcom/vivo/sdkplugin/TempNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->b:Landroid/widget/Button;

    new-instance v1, Lcom/vivo/sdkplugin/u;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/u;-><init>(Lcom/vivo/sdkplugin/TempNoticeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_ba
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->b:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_87

    :cond_c3
    iget v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d8

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const-string v2, "vivo_temp_pay_tips"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5

    :cond_d8
    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vivo_temp_update_tips"

    invoke-direct {p0, v2}, Lcom/vivo/sdkplugin/TempNoticeDialog;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a5
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/TempNoticeDialog;)Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->d:Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    return-object v0
.end method


# virtual methods
.method public show()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/TempNoticeDialog;->f:Landroid/content/Context;

    const/16 v2, 0x14a

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
