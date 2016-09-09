.class final Lcom/vivo/sdkplugin/activity/cE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/VivoLoginParentLayout$onSizeChangeListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/activity/cE;)Lcom/vivo/sdkplugin/activity/LoginActivity;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public final onSoftInputChange(Ljava/lang/Boolean;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---------onSoftInputChange()-----------visible: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " showPopupMenu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->x(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->x(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->y(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vivo/sdkplugin/activity/cF;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/activity/cF;-><init>(Lcom/vivo/sdkplugin/activity/cE;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->A(Lcom/vivo/sdkplugin/activity/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cE;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->B(Lcom/vivo/sdkplugin/activity/LoginActivity;)V

    :cond_57
    return-void
.end method
