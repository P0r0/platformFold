.class final Lcom/vivo/sdkplugin/activity/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const-string v0, "VivoGame.InfoMoreListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPreFragTag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stregty_all_tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-virtual {v0, v3}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->requestAllStraegty(I)V

    goto :goto_d

    :cond_53
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Lcom/vivo/sdkplugin/activity/cg;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cb;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->d:Lcom/vivo/sdkplugin/activity/cg;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/cg;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;Ljava/lang/String;)V

    goto :goto_d
.end method
