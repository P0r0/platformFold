.class final Lcom/vivo/sdkplugin/activity/bS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->c(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->d(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bS;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v1}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->f(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->requestAllStraegty(I)V

    return-void
.end method
