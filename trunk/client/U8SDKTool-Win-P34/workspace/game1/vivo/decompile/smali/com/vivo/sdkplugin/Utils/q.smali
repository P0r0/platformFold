.class final Lcom/vivo/sdkplugin/Utils/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/q;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const-string v0, "VivoCkApkInsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DialogInterface,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_32

    const-string v0, "VivoCkApkInsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKey,keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/q;->a:Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoCkApkInsManager;->safeDismissLoadingDialog()V

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method
