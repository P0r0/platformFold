.class public Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/ui/DKContainerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadBroadcastReceiver"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final synthetic e:Lcom/duoku/platform/ui/DKContainerActivity;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/ui/DKContainerActivity;)V
    .registers 4

    .prologue
    .line 564
    iput-object p1, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->e:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 566
    invoke-virtual {p1}, Lcom/duoku/platform/ui/DKContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_upload_select_image"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->a:Ljava/lang/String;

    .line 567
    invoke-virtual {p1}, Lcom/duoku/platform/ui/DKContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_upload_from_camera"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->b:Ljava/lang/String;

    .line 568
    invoke-virtual {p1}, Lcom/duoku/platform/ui/DKContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_upload_from_photo"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->c:Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Lcom/duoku/platform/ui/DKContainerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dk_cancel"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;)Lcom/duoku/platform/ui/DKContainerActivity;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->e:Lcom/duoku/platform/ui/DKContainerActivity;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 574
    if-eqz p2, :cond_18

    .line 577
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->e:Lcom/duoku/platform/ui/DKContainerActivity;

    const-string v1, "upload_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/ui/DKContainerActivity;->a(Lcom/duoku/platform/ui/DKContainerActivity;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->e:Lcom/duoku/platform/ui/DKContainerActivity;

    const-string v1, "json"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/ui/DKContainerActivity;->b(Lcom/duoku/platform/ui/DKContainerActivity;Ljava/lang/String;)V

    .line 580
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->e:Lcom/duoku/platform/ui/DKContainerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 581
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 582
    iget-object v3, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 583
    new-instance v2, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver$1;-><init>(Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;)V

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/duoku/platform/ui/DKContainerActivity$UploadBroadcastReceiver;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 603
    return-void
.end method
