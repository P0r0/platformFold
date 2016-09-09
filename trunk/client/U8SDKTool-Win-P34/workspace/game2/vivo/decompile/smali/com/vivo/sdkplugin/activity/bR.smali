.class final Lcom/vivo/sdkplugin/activity/bR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/Utils/FooterListView$LoadCallBack;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadData()V
    .registers 4

    const-string v0, "VivoGame.GameInfoMoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "VivoGame.GameInfoMoreActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsLoading"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v2}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;Z)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->b(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->a(Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/bR;->a:Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;

    iget v1, v1, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/GameInfoMoreListActivity;->onLoadDatamore(I)V

    :cond_56
    return-void
.end method
