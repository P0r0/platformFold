.class public Lcom/vivo/sdkplugin/SelfUpdateDialog;
.super Landroid/app/Dialog;


# static fields
.field public static final COMMON_DIALOG:I = 0x1

.field public static final FIRST_BTN:I = 0x1

.field public static final FORCE_DIALOG:I = 0x2

.field public static final INSTALL_DIALOG:I = 0x3

.field public static final SECOND_BTN:I = 0x2

.field public static final THIRD_BTN:I = 0x3


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;

.field private e:Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    const/4 v2, 0x0

    const-string v0, "style"

    const-string v1, "vivo_upgrade_dialog"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->d:Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;

    iput-object v2, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->e:Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;

    const-string v0, "layout"

    const-string v1, "vivo_install_dialog_message"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setContentView(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->setCanceledOnTouchOutside(Z)V

    const-string v0, "id"

    const-string v1, "vivo_upgrade_install_message"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->c:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "vivo_upgrade_ok"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/r;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/r;-><init>(Lcom/vivo/sdkplugin/SelfUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "vivo_upgrade_cancel"

    invoke-static {v0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/vivo/sdkplugin/s;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/s;-><init>(Lcom/vivo/sdkplugin/SelfUpdateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/SelfUpdateDialog;)Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->d:Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/SelfUpdateDialog;)Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->e:Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;

    return-object v0
.end method


# virtual methods
.method public setContentText(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDownBtnEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setNegativeClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->e:Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;

    return-void
.end method

.method public setPositiveClickListener(Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/SelfUpdateDialog;->d:Lcom/vivo/sdkplugin/SelfUpdateDialog$PositiveOnClickListener;

    return-void
.end method
