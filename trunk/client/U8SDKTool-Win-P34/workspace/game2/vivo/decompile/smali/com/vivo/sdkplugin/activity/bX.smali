.class final Lcom/vivo/sdkplugin/activity/bX;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadData()V
    .registers 5

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "InfoMoreListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsLoading"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->h(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->i(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Lcom/vivo/sdkplugin/Utils/HJDataUtil;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/activity/bX;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;

    invoke-static {v3}, Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;->j(Lcom/vivo/sdkplugin/activity/InfoMoreListFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/sdkplugin/Utils/HJDataUtil;->requestHjStrategyList(IILjava/lang/String;)V

    :cond_63
    return-void
.end method
