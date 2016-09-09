.class public Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "style"

    const-string v1, "CustomProgressDialog"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->b:Landroid/content/Context;

    const-string v0, "layout"

    const-string v1, "progress_bar_layout"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setContentView(I)V

    const-string v0, "id"

    const-string v1, "vivo_loading_msg"

    invoke-static {p1, v0, v1}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public show()V
    .registers 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->b:Landroid/content/Context;

    const/16 v2, 0x14a

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->b:Landroid/content/Context;

    const/16 v2, 0x37

    invoke-static {v1, v2}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->dipToPix(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
