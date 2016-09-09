.class public Lcom/vivo/sdkplugin/Utils/DialogUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->b:Landroid/content/Context;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/DialogUtil;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static createNormalLoginDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 4

    new-instance v0, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-direct {v0, p0, p1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public static showNetworkDialog(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "string"

    const-string v2, "vivo_net_work_not_connect_title"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v1, "string"

    const-string v2, "vivo_net_work_not_connect_info"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "string"

    const-string v2, "vivo_set_network"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/d;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "string"

    const-string v2, "vivo_cancle"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/e;

    invoke-direct {v2}, Lcom/vivo/sdkplugin/Utils/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/f;

    invoke-direct {v1}, Lcom/vivo/sdkplugin/Utils/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createDialog(I)Landroid/app/AlertDialog;
    .registers 6

    const-string v0, "DialogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createDialog,id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_80

    const-string v0, "DialogUtil"

    const-string v1, "Unsupport type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1f
    return-object v0

    :pswitch_20
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->b:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_net_work_not_connect_title"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->b:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_net_work_not_connect_info"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->b:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_set_network"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/g;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/g;-><init>(Lcom/vivo/sdkplugin/Utils/DialogUtil;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->b:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "vivo_cancle"

    invoke-static {v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/vivo/sdkplugin/Utils/h;

    invoke-direct {v2, p0}, Lcom/vivo/sdkplugin/Utils/h;-><init>(Lcom/vivo/sdkplugin/Utils/DialogUtil;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/i;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/Utils/i;-><init>(Lcom/vivo/sdkplugin/Utils/DialogUtil;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/DialogUtil;->c:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1f

    :pswitch_data_80
    .packed-switch 0x64
        :pswitch_20
    .end packed-switch
.end method
