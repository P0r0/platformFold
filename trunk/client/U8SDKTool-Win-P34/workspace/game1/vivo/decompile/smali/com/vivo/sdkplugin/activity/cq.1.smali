.class final Lcom/vivo/sdkplugin/activity/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/cp;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/cp;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cq;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    const-string v0, "*************onDismiss**************"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cq;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->d(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cq;->a:Lcom/vivo/sdkplugin/activity/cp;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/cp;->a(Lcom/vivo/sdkplugin/activity/cp;)Lcom/vivo/sdkplugin/activity/LoginActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->M(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    return-void
.end method
