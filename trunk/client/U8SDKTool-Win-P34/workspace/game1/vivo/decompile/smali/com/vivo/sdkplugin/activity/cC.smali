.class final Lcom/vivo/sdkplugin/activity/cC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->u(Lcom/vivo/sdkplugin/activity/LoginActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->queryAllExcpTemp([Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->a(Lcom/vivo/sdkplugin/activity/LoginActivity;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "------------mHisAccountInfos: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "------------size: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->v(Lcom/vivo/sdkplugin/activity/LoginActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_72

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->w(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6f
    return-void

    :cond_70
    move v0, v1

    goto :goto_47

    :cond_72
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cC;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/LoginActivity;->w(Lcom/vivo/sdkplugin/activity/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6f
.end method
