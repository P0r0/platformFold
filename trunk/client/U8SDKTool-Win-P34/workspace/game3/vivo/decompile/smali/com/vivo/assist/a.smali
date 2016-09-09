.class final Lcom/vivo/assist/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/assist/AssistWindowManager;


# direct methods
.method constructor <init>(Lcom/vivo/assist/AssistWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "AssistView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AssistWindowManager--OnAssistViewClickListener--mAssistButton.getHided()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v2}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getHided()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAssistButton.getAlphaHided()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v2}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/assist/widget/AssistView;->getAlphaHided()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getHided()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->getAlphaHided()Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_4a
    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->OnAssistViewHideAssistPanelClickListener()V

    :goto_53
    return-void

    :cond_54
    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->b(Lcom/vivo/assist/AssistWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->hideAssistPanel()V

    goto :goto_53

    :cond_62
    const-string v0, "AssistView"

    const-string v1, "AssistWindowManager--OnAssistViewClickListener--showAssistPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-virtual {v0}, Lcom/vivo/assist/AssistWindowManager;->showAssistPanel()V

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->showAssistPanehideNotificationIcon()V

    iget-object v0, p0, Lcom/vivo/assist/a;->a:Lcom/vivo/assist/AssistWindowManager;

    invoke-static {v0}, Lcom/vivo/assist/AssistWindowManager;->a(Lcom/vivo/assist/AssistWindowManager;)Lcom/vivo/assist/widget/AssistView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/assist/widget/AssistView;->stopAlphaTask()V

    goto :goto_53
.end method
