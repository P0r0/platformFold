.class final Lcom/vivo/sdkplugin/activity/aO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/aO;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aO;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->b(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aO;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->c(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/aO;->a:Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;->c(Lcom/vivo/sdkplugin/activity/CommitUserIdentifyActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_12
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
